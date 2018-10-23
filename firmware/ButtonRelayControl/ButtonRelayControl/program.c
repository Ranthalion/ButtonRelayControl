#include <atmel_start.h>
#include <util/delay.h>
#include <program.h>		


void loop(void)
{
	LED_toggle_level();
	_delay_ms(500);
} 
