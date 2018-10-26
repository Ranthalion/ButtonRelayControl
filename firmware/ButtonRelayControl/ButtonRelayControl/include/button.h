/*
 * button.h
 *
 * Created: 10/24/2018 10:12:12 PM
 *  Author: Ranth
 */ 


#ifndef BUTTON_H_
#define BUTTON_H_

#include <stdint.h>
#include <stdbool.h>
#include <port.h>
#define F_CPU 8000000

#define DEBOUNCE_THRESHOLD 5

typedef struct button_struct_s {
	volatile uint8_t *port;
	uint8_t pinMask;
	
	bool state;
	uint8_t debounceCounter;
	uint16_t duration;
	bool buttonDown;
	bool buttonUp;	
} button_struct_t;

void InitializeButton(button_struct_t* button, volatile uint8_t *port, uint8_t pinMask);

void ReadButton(button_struct_t* button);

static inline void SW1_LED_set_level(const bool level)
{
	PORTB_set_pin_level(1, level);
}

static inline void SW2_LED_set_level(const bool level)
{
	PORTD_set_pin_level(6, level);
}

#endif /* BUTTON_H_ */