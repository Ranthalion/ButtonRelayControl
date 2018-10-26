#include <button.h>
#include <atmel_start_pins.h>
#include <timeout.h>
#include <led_animation.h>
#include <pwm_basic.h>

#define DEBOUNCE_THRESHOLD 3
#define ANIMATION_RATE 80

static absolutetime_t sw1_led_animation();
static absolutetime_t sw2_led_animation();

volatile uint8_t led1Frame;
volatile uint8_t led2Frame;

static absolutetime_t sw1_led_off_cb();
static absolutetime_t sw2_led_off_cb();

timer_struct_t sw1_led_timer = {sw1_led_off_cb, NULL};
timer_struct_t sw2_led_timer = {sw2_led_off_cb, NULL};
timer_struct_t sw1_led_animation_timer = {sw1_led_animation, NULL};
timer_struct_t sw2_led_animation_timer = {sw2_led_animation, NULL};

static inline void SW1_LED_set_level(const bool level)
{
	PORTB_set_pin_level(1, level);
}

static inline void SW2_LED_set_level(const bool level)
{
	PORTD_set_pin_level(6, level);
}

static absolutetime_t sw2_led_animation()
{
	led1Frame++;
	LED_SW1_load_duty_cycle_ch0(sine_wave[led1Frame]);
	return ANIMATION_RATE;
}

static absolutetime_t sw1_led_animation()
{
	led2Frame++;
	LED_SW2_load_duty_cycle_ch0(sine_wave[led2Frame]);
	return ANIMATION_RATE;
}


void InitializeButton(button_struct_t *button, volatile uint8_t *port, uint8_t pinMask)
{	
	led2Frame = 0;
	led1Frame = 0;
	button->port = port;
	button->pinMask = pinMask;
	button->state = true;
	button->debounceCounter = 0;
	button->duration = 0;
	button->buttonDown = false;
	button->buttonUp = false;
}

void ReadButton(button_struct_t *button)
{
	bool currentState;
	currentState = *button->port & (1 << button->pinMask);
	
	//LED_set_level(button->state);
	if (currentState != button->state) //button may be bouncing
	{
		
		button->debounceCounter++;

		if (button->debounceCounter >= DEBOUNCE_THRESHOLD)
		{
			if (currentState == 1) //button released
			{
				button->buttonDown = false;
				button->buttonUp= true;
			}
			else if (currentState == 0) // button pressed
			{
				button->duration = 0;
				button->buttonDown = true;
			}

			button->state = currentState;
			button->debounceCounter = 0;
		}
	}
	else if (currentState == 0) //button being held
	{
		button->duration++;
		if (button->duration == BUTTON_HOLD_THRESHOLD)
		{
			if (button->pinMask == PINB2)
				SW1_LED_flash();
			else
				SW2_LED_flash();
		}
	}
	else if (button->debounceCounter > 0) //button not pressed and not bouncing
	{
		button->debounceCounter = 0;
	}
}

void SW1_LED_On()
{
	PB1_set_dir(PORT_DIR_OUT);
	SW1_LED_set_level(false);
}

void SW1_LED_Off()
{
	LED_SW1_disable_output_ch0();
	//TIMER_0_timeout_delete(&sw1_led_animation_timer);
	PB1_set_level(true);
	PB1_set_dir(PORT_DIR_IN);
}

void SW1_LED_flash()
{
	SW1_LED_On();
	TIMER_0_timeout_create(&sw1_led_timer, 10);
}

static absolutetime_t sw1_led_off_cb()
{
	SW1_LED_Off();
	return 0;
}

void SW1_LED_Pulse()
{
	led1Frame = 0;	
	PB1_set_dir(PORT_DIR_OUT);
	PB1_set_level(true);
	LED_SW1_init();
	TIMER_0_timeout_create(&sw1_led_animation_timer, ANIMATION_RATE);
}

void SW2_LED_On()
{
	PD6_set_dir(PORT_DIR_OUT);
	SW2_LED_set_level(false);
}

void SW2_LED_Off()
{
	LED_SW2_disable_output_ch0();
	TIMER_0_timeout_delete(&sw2_led_animation_timer);
	PD6_set_level(true);
	PD6_set_dir(PORT_DIR_IN);
}

void SW2_LED_flash()
{
	SW2_LED_On();
	TIMER_0_timeout_create(&sw2_led_timer, 10);
}

static absolutetime_t sw2_led_off_cb()
{
	SW2_LED_Off();
	return 0;
}

void SW2_LED_Pulse()
{
	led2Frame = 0;
	PD6_set_dir(PORT_DIR_OUT);
	PD6_set_level(true);
	LED_SW2_init();
	TIMER_0_timeout_create(&sw2_led_animation_timer, ANIMATION_RATE);
}