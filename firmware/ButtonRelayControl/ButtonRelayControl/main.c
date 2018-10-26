#include <atmel_start.h>
#include <program.h>
#include <timeout.h>
#include <pwm_basic_example.h>
#include <led_animation.h>
#include <button.h>
#include <util/delay.h>

#define ANIMATION_RATE 80
#define BUTTON_RATE 90

static absolutetime_t led_off();
static absolutetime_t sw1_led_off();
static absolutetime_t sw2_led_off();

void flash_sw1_led();
void flash_sw2_led();

volatile int x;
volatile uint8_t led1Frame;
volatile uint8_t led2Frame;

button_struct_t sw1;
button_struct_t sw2;

timer_struct_t led_timer = {led_off, NULL};
timer_struct_t sw1_led_timer = {sw1_led_off, NULL};
timer_struct_t sw2_led_timer = {sw2_led_off, NULL};

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

static absolutetime_t sw1_led_animation()
{
	led1Frame++;
	LED_SW1_load_duty_cycle_ch0(sine_wave[led1Frame]);
	return ANIMATION_RATE;	
}

static absolutetime_t sw2_led_animation()
{
	led2Frame++;
	LED_SW2_load_duty_cycle_ch0(sine_wave[led2Frame]);
	return ANIMATION_RATE;
}

static absolutetime_t button_cb()
{
	//TODO: Check the buttons
	ReadButton(&sw1);
	ReadButton(&sw2);
	//LED_set_level(PORTB_get_pin_level(2));
	return BUTTON_RATE;
}

static absolutetime_t led_off()
{
	LED_set_level(true);
	return 0;
}

static absolutetime_t sw1_led_off()
{
	PD6_set_dir(PORT_DIR_IN);
	SW1_LED_set_level(true);
	return 0;
}

static absolutetime_t sw2_led_off()
{
	PB1_set_dir(PORT_DIR_IN);
	SW2_LED_set_level(true);
	return 0;
}

void LED_flash()
{
	LED_set_level(false);
	TIMER_0_timeout_create(&led_timer, 10);
}

void SW1_LED_flash()
{
	PD6_set_dir(PORT_DIR_OUT);
	SW1_LED_set_level(false);
	TIMER_0_timeout_create(&sw1_led_timer, 10);
}

void SW2_LED_flash()
{
	PB1_set_dir(PORT_DIR_OUT);
	SW2_LED_set_level(false);
	TIMER_0_timeout_create(&sw2_led_timer, 10);
}

int main(void)
{
	x = 0;
	
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();
		
	LED_toggle_level();
	_delay_ms(50);
	LED_toggle_level();
	_delay_ms(50);
	LED_toggle_level();
	_delay_ms(50);
	LED_toggle_level();
	_delay_ms(200);

	timer_struct_t led_timer = {led_cb, NULL};
	timer_struct_t sw1_led_animation_timer = {sw1_led_animation, NULL};
	timer_struct_t sw2_led_animation_timer = {sw2_led_animation, NULL};
	timer_struct_t button_timer = {button_cb, NULL};

	PB1_set_dir(PORT_DIR_IN);
	PB1_set_level(true);
	
	PD6_set_dir(PORT_DIR_IN);
	PD6_set_level(true);

	InitializeButton(&sw2, &PINB, PINB2);
	_delay_ms(500);
	InitializeButton(&sw1, &PIND, PIND7);
	
	//LED_SW2_load_duty_cycle_ch0(0);
	//LED_SW1_load_duty_cycle_ch0(0);
	
	ENABLE_INTERRUPTS();

	//LED_SW1_enable_output_ch0();

	//TIMER_0_timeout_create(&led_timer, 8);
	//PB1_set_dir(PORT_DIR_OUT);
	//TIMER_0_timeout_create(&sw1_led_animation_timer, ANIMATION_RATE);
	//TIMER_0_timeout_create(&sw2_led_animation_timer, ANIMATION_RATE);
	TIMER_0_timeout_create(&button_timer, BUTTON_RATE);


	//LED_SW1_test_pwm_basic();
	
	
	/* Replace with your application code */
	while (1) {
		TIMER_0_timeout_call_next_callback();
		
		if (sw1.buttonDown == true)
		{
			sw1.buttonDown = false;
			SW1_LED_flash();
		}

		if (sw2.buttonDown == true)
		{
			sw2.buttonDown = false;
			SW2_LED_flash();
		}
		

		if (sw1.buttonUp == true)
		{
			sw1.buttonUp = false;
			LED_toggle_level();
		}
		
		if (sw2.buttonUp == true)
		{
			sw2.buttonUp = false;
			LED_toggle_level();
		}
		
		//loop();
	}
}
