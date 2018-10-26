/*
 * button.h
 *
 * Created: 10/24/2018 10:12:12 PM
 *  Author: Ranth
 */ 


#ifndef BUTTON_H_
#define BUTTON_H_

#define BUTTON_HOLD_THRESHOLD 50

#include <stdint.h>
#include <stdbool.h>
#include <port.h>
#include <timeout.h>

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

void SW1_LED_flash();

void SW2_LED_flash();

void SW1_LED_Off();

void SW2_LED_Off();

void SW1_LED_On();

void SW2_LED_On();

void SW1_LED_Pulse();

void SW2_LED_Pulse();

#endif /* BUTTON_H_ */