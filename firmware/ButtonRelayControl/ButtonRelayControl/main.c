#include <atmel_start.h>
#include <program.h>
#include <timeout.h>
#include <pwm_basic_example.h>
#include <led_animation.h>

#define ANIMATION_RATE 80

volatile int x;
volatile uint8_t led1Frame;
volatile uint8_t led2Frame;

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

int main(void)
{
	x = 0;

	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	timer_struct_t led_timer = {led_cb, NULL};
	timer_struct_t sw1_led_timer = {sw1_led_animation, NULL};
	timer_struct_t sw2_led_timer = {sw2_led_animation, NULL};

	ENABLE_INTERRUPTS();

	LED_SW1_enable_output_ch0();

	TIMER_0_timeout_create(&led_timer, 8);
	TIMER_0_timeout_create(&sw1_led_timer, ANIMATION_RATE);
	TIMER_0_timeout_create(&sw2_led_timer, ANIMATION_RATE);
	
	LED_SW1_test_pwm_basic();
	
	/* Replace with your application code */
	while (1) {
		TIMER_0_timeout_call_next_callback();
		//loop();
	}
}
