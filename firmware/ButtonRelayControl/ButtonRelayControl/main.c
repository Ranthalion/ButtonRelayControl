#include <atmel_start.h>
#include <program.h>
#include <timeout.h>
#include <button.h>
#include <util/delay.h>

#define BUTTON_RATE 90

static absolutetime_t led_off();
void startupAnimation();
void handleRunningState();
void handleIdleState();
void handleTestState();
void handleChannel1State();
void handleChannel2State();

volatile int x = 0;

button_struct_t sw1;
button_struct_t sw2;

timer_struct_t led_timer = {led_off, NULL};

static absolutetime_t led_cb()
{
	x++;
	if (x == 500)
		LED_set_level(0);
	else if (x == 1000)
		LED_set_level(1);
		
	if (x > 1000)
		x=0;
		
	return 8; // Stop the timer
}


static absolutetime_t button_cb()
{
	ReadButton(&sw1);
	ReadButton(&sw2);
	return BUTTON_RATE;
}

static absolutetime_t led_off()
{
	LED_set_level(true);
	return 0;
}

void LED_flash()
{
	LED_set_level(false);
	TIMER_0_timeout_create(&led_timer, 10);
}

enum System_State { System_Power_On, System_Idle, System_Running, System_Error, Test};
enum Channel_State {Idle, Button_Down, Button_Held, Short_Press, Long_Press, Static_On, Monitor_On, Stop};

enum System_State system_state = System_Power_On;
enum Channel_State channel1_state = Idle;
enum Channel_State channel2_state = Idle;

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	timer_struct_t led_timer = {led_cb, NULL};

	SW1_LED_Off();
	SW2_LED_Off();

	InitializeButton(&sw1, &PINB, PINB2);
	InitializeButton(&sw2, &PIND, PIND7);
	
	ENABLE_INTERRUPTS();

	timer_struct_t button_timer = {button_cb, NULL};
	TIMER_0_timeout_create(&button_timer, BUTTON_RATE);

	while (1) {
		switch(system_state) {
			case System_Power_On:
				startupAnimation();
				system_state = System_Running;
				//system_state = Test;
			break;
			
			case System_Running:
				handleRunningState();
				break;
			
			case System_Idle:
				handleIdleState();
				break;
				
			case Test:
				handleTestState();
				break;
				
			default:
				system_state = System_Power_On;
				break;
		}
	}
}

void startupAnimation()
{
	for(int i = 0; i < 10; i++)
	{
		LED_toggle_level();
		_delay_ms(50);
		LED_toggle_level();
		_delay_ms(50);
	}
	SW1_LED_flash();
	SW2_LED_flash();
}

void handleRunningState()
{
	TIMER_0_timeout_call_next_callback();
	handleChannel1State();
	handleChannel2State();
}

void handleTestState()
{
	
	TIMER_0_timeout_call_next_callback();
	//handleChannel1State();
	//handleChannel2State();
	SW1_LED_On();
	_delay_ms(500);
	SW1_LED_Off();
	_delay_ms(500);
	
	LED_toggle_level();
	
	PB1_set_dir(PORT_DIR_OUT);
	PB1_set_level(true);
	LED_SW1_init();
	LED_SW1_load_duty_cycle_ch0(5);
	//LED_SW1_load_counter(0);
	
	_delay_ms(500);
	LED_toggle_level();
	SW1_LED_Off();
	_delay_ms(500);
}

void handleIdleState()
{
	//TODO: Keep idle timer and go into sleep mode 
	
}

void handleChannel1State()
{
	switch(channel1_state) {
		case Idle:
			if (sw1.buttonDown == true)
			{
				sw1.buttonDown = false;
				channel1_state = Button_Down;				
			}			
			break;
			
		case Button_Down:		
			SW1_LED_flash();
			channel1_state = Button_Held;
			break;
			
		case Button_Held:
			if (sw1.buttonUp == true)
			{
				sw1.buttonUp = false;
				if (sw1.duration > BUTTON_HOLD_THRESHOLD )
				{
					channel1_state = Long_Press;					
				}
				else
				{
					channel1_state = Short_Press;					
				}
			}
			break;
			
		case Short_Press: 
			SW1_LED_On();
			RELAY1_set_level(true);
			channel1_state = Static_On;
			break;
			
		case Long_Press: 
			if(SENS2_get_level() == false)
			{
				channel2_state = Stop;
			}
			else
			{
				SW1_LED_Pulse();
				RELAY1_set_level(true);
				channel1_state = Monitor_On;
			}
			break;
		
		case Static_On:
			if (sw1.buttonUp == true)
			{
				sw1.buttonUp = false;
				channel1_state = Stop;
			}
			break;
		
		case Monitor_On:
			if (sw1.buttonUp == true)
			{
				sw1.buttonUp = false;
				channel1_state = Stop;
			}
			if(SENS1_get_level() == false)
			{
				channel1_state = Stop;
			}
			break;
		
		case Stop: 
			RELAY1_set_level(false);
			SW1_LED_Off();
			channel1_state = Idle;
			break;
			
		default:
			
			break;
	}	
}

void handleChannel2State()
{
	
	switch(channel2_state) {
		case Idle:
			if (sw2.buttonDown == true)
			{
				sw2.buttonDown = false;
				channel2_state = Button_Down;
			}
			break;
		
		case Button_Down:
			SW2_LED_flash();
			channel2_state = Button_Held;
			break;
		
		case Button_Held:
			if (sw2.buttonUp == true)
			{
				sw2.buttonUp = false;
				if (sw2.duration > BUTTON_HOLD_THRESHOLD )
				{
					channel2_state = Long_Press;
				}
				else
				{
					channel2_state = Short_Press;
				}
			}
			break;
		
		case Short_Press:
			SW2_LED_On();
			RELAY2_set_level(true);
			channel2_state = Static_On;
			break;
		
		case Long_Press:
			if(SENS2_get_level() == false)
			{
				channel2_state = Stop;
			}
			else
			{
				SW2_LED_Pulse();
				RELAY2_set_level(true);
				channel2_state = Monitor_On;
			}
			break;
		
		case Static_On:
			if (sw2.buttonUp == true)
			{
				sw2.buttonUp = false;
				channel2_state = Stop;
			}
			break;
		
		case Monitor_On:
			if (sw2.buttonUp == true)
			{
				sw2.buttonUp = false;
				channel2_state = Stop;
			}
			if(SENS2_get_level() == false)
			{
				channel2_state = Stop;
			}
			break;
		
		case Stop:
			RELAY2_set_level(false);
			SW2_LED_Off();
			channel2_state = Idle;
			break;
		
		default:
			break;
	}
}