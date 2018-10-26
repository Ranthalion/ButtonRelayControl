/**
 * \file
 *
 * \brief PWM Basic driver implementation.
 *
 (c) 2018 Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms,you may use this software and
    any derivatives exclusively with Microchip products.It is your responsibility
    to comply with third party license terms applicable to your use of third party
    software (including open source software) that may accompany Microchip software.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 */

/**
 * \defgroup doc_driver_pwm_basic PWM Basic Driver
 * \ingroup doc_driver_pwm
 *
 * \section doc_driver_pwm_normal_rev Revision History
 * - v0.0.0.1 Initial Commit
 *
 *@{
 */
#include <pwm_basic.h>

/**
 * \brief Initialize PWM
 * If module is configured to disabled state, the clock to the PWM is disabled
 * if this is supported by the device's clock system.
 *
 * \return Initialization status.
 */
int8_t LED_SW2_init()
{

	/* Enable TC0 */
	PRR0 &= ~(1 << PRTIM0);

	TCCR0A = (1 << COM0A1) | (1 << COM0A0)   /* Set OCA on Compare Match, clear OCA on BOTTOM (inverting mode) */
	         | (0 << COM0B1) | (0 << COM0B0) /* Normal port operation, OCB disconnected */
	         | (1 << WGM01) | (1 << WGM00);  /* TC8 Mode 3 Fast PWM */

	TCCR0B = 0                                          /* TC8 Mode 3 Fast PWM */
	         | (0 << CS02) | (1 << CS01) | (1 << CS00); /* IO clock divided by 64 */

	// TIMSK0 = 0 << OCIE0B /* Output Compare B Match Interrupt Enable: disabled */
	//		 | 0 << OCIE0A /* Output Compare A Match Interrupt Enable: disabled */
	//		 | 0 << TOIE0; /* Overflow Interrupt Enable: disabled */

	OCR0A = 0x98; /* Output compare A: 0x98 */

	// OCR0B = 0x0; /* Output compare B: 0x0 */

	return 0;
}

/**
 * \brief Enable PWM output on channel 0
 *
 * \return Nothing
 */
void LED_SW2_enable_output_ch0()
{

	TCCR0A |= ((1 << COM0A1) | (1 << COM0A0));
}

/**
 * \brief Disable PWM output on channel 0
 *
 * \return Nothing
 */
void LED_SW2_disable_output_ch0()
{

	TCCR0A &= ~((1 << COM0A1) | (1 << COM0A0));
}

/**
 * \brief Load COUNTER register in LED_SW2
 *
 * \param[in] counter_value The value to load into COUNTER
 *
 * \return Nothing
 */
void LED_SW2_load_counter(LED_SW2_register_t counter_value)
{
	TCNT0 = counter_value;
}

/**
 * \brief Load duty cycle register in for channel 0.
 * The physical register may have different names, depending on the hardware.
 * This is not the duty cycle as percentage of the whole period, but the actual
 * counter compare value.
 *
 * \param[in] counter_value The value to load into the duty cycle register.
 *
 * \return Nothing
 */
void LED_SW2_load_duty_cycle_ch0(LED_SW2_register_t duty_value)
{
	OCR0A = duty_value;
}


/**
 * \brief Initialize PWM
 * If module is configured to disabled state, the clock to the PWM is disabled
 * if this is supported by the device's clock system.
 *
 * \return Initialization status.
 */
int8_t LED_SW1_init()
{

	/* Enable TC1 */
	PRR0 &= ~(1 << PRTIM1);

	TCCR1A = (1 << COM1A1) | (1 << COM1A0)   /* Set OCA on Compare Match, clear OCA on BOTTOM (inverting mode) */
	         | (0 << COM1B1) | (0 << COM1B0) /* Normal port operation, OCB disconnected */
	         | (0 << WGM11) | (1 << WGM10);  /* TC16 Mode 5 Fast 8-bit PWM */

	TCCR1B = (0 << WGM13) | (1 << WGM12)                /* TC16 Mode 5 Fast 8-bit PWM */
	         | 0 << ICNC1                               /* Input Capture Noise Canceler: disabled */
	         | 0 << ICES1                               /* Input Capture Edge Select: disabled */
	         | (0 << CS12) | (1 << CS11) | (1 << CS10); /* IO clock divided by 64 */

	// ICR1 = 0x0; /* Input capture value: 0x0 */

	OCR1A = 0x96; /* Output compare A: 0x96 */

	// OCR1B = 0x0; /* Output compare B: 0x0 */

	// TIMSK1 = 0 << OCIE1B /* Output Compare B Match Interrupt Enable: disabled */
	//		 | 0 << OCIE1A /* Output Compare A Match Interrupt Enable: disabled */
	//		 | 0 << ICIE1 /* Input Capture Interrupt Enable: disabled */
	//		 | 0 << TOIE1; /* Overflow Interrupt Enable: disabled */

	return 0;
}

/**
 * \brief Enable PWM output on channel 0
 *
 * \return Nothing
 */
void LED_SW1_enable_output_ch0()
{

	TCCR1A |= ((1 << COM1A1) | (1 << COM1A0));
}

/**
 * \brief Disable PWM output on channel 0
 *
 * \return Nothing
 */
void LED_SW1_disable_output_ch0()
{
	TCCR1A &= ~((1 << COM1A1) | (1 << COM1A0));
}


/**
 * \brief Load COUNTER register in LED_SW1
 *
 * \param[in] counter_value The value to load into COUNTER
 *
 * \return Nothing
 */
void LED_SW1_load_counter(LED_SW1_register_t counter_value)
{
	TCNT1 = counter_value;
}

/**
 * \brief Load duty cycle register in for channel 0.
 * The physical register may have different names, depending on the hardware.
 * This is not the duty cycle as percentage of the whole period, but the actual
 * counter compare value.
 *
 * \param[in] counter_value The value to load into the duty cycle register.
 *
 * \return Nothing
 */
void LED_SW1_load_duty_cycle_ch0(LED_SW1_register_t duty_value)
{
	OCR1A = duty_value;
}
