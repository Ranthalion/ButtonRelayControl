/**
 * \file
 *
 * \brief PWM Normal mode (i.e. non-split) declaration.
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

#ifndef PWM_BASIC_H_INCLUDED
#define PWM_BASIC_H_INCLUDED

#include <compiler.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*pwm_irq_cb_t)(void);

#define LED_SW1_INTERRUPT_CB_RATE 0

/** The datatype matching the bitwidth of the PWM hardware */
typedef uint16_t LED_SW1_register_t;

int8_t LED_SW1_init(void);

void LED_SW1_enable();

void LED_SW1_disable();

void LED_SW1_enable_output_ch0();

void LED_SW1_disable_output_ch0();

void LED_SW1_enable_output_ch1();

void LED_SW1_disable_output_ch1();

void LED_SW1_load_counter(LED_SW1_register_t counter_value);

void LED_SW1_load_duty_cycle_ch0(LED_SW1_register_t duty_value);

void LED_SW1_load_duty_cycle_ch1(LED_SW1_register_t duty_value);

void LED_SW1_register_callback(pwm_irq_cb_t f);

#define LED_SW2_INTERRUPT_CB_RATE 0

/** The datatype matching the bitwidth of the PWM hardware */
typedef uint16_t LED_SW2_register_t;

int8_t LED_SW2_init(void);

void LED_SW2_enable();

void LED_SW2_disable();

void LED_SW2_enable_output_ch0();

void LED_SW2_disable_output_ch0();

void LED_SW2_enable_output_ch1();

void LED_SW2_disable_output_ch1();

void LED_SW2_load_counter(LED_SW2_register_t counter_value);

void LED_SW2_load_duty_cycle_ch0(LED_SW2_register_t duty_value);

void LED_SW2_load_duty_cycle_ch1(LED_SW2_register_t duty_value);

void LED_SW2_register_callback(pwm_irq_cb_t f);

#ifdef __cplusplus
}
#endif

#endif /* PWM_BASIC_H_INCLUDED */
