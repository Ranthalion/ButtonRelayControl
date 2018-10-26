#include <button.h>
#include <atmel_start_pins.h>
#include <util/delay.h>


void InitializeButton(button_struct_t *button, volatile uint8_t *port, uint8_t pinMask)
{	
	button->port = port;
	button->pinMask = pinMask;
	button->state = true;
	button->debounceCounter = 0;
	button->duration = 0;
	button->buttonDown = false;
	button->buttonUp = false;
	LED_toggle_level();
	_delay_ms(500);
	LED_toggle_level();
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
	}
	else if (button->debounceCounter > 0) //button not pressed and not bouncing
	{
		button->debounceCounter = 0;
	}
}

