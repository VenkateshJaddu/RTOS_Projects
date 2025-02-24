/*
 * led_effect.c
 *
 *  Created on: Feb 2, 2025
 *      Author: JadduVenkatesh
 */

#include "main.h"

void turn_off_all_leds(void)
{
	HAL_GPIO_WritePin(Ext_LED_1_GPIO_Port, Ext_LED_1_Pin,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(Ext_LED_2_GPIO_Port, Ext_LED_2_Pin,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin,GPIO_PIN_RESET);
}


void turn_on_all_leds(void)
{
	HAL_GPIO_WritePin(Ext_LED_1_GPIO_Port, Ext_LED_1_Pin,GPIO_PIN_SET);
	HAL_GPIO_WritePin(Ext_LED_2_GPIO_Port, Ext_LED_2_Pin,GPIO_PIN_SET);
	HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin,GPIO_PIN_SET);
}

void turn_on_odd_leds(void)
{
	HAL_GPIO_WritePin(Ext_LED_1_GPIO_Port, Ext_LED_1_Pin,GPIO_PIN_SET);
	HAL_GPIO_WritePin(Ext_LED_2_GPIO_Port, Ext_LED_2_Pin,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin,GPIO_PIN_SET);
}


void turn_on_even_leds(void)
{
	HAL_GPIO_WritePin(Ext_LED_1_GPIO_Port, Ext_LED_1_Pin,GPIO_PIN_RESET);
	HAL_GPIO_WritePin(Ext_LED_2_GPIO_Port, Ext_LED_2_Pin,GPIO_PIN_SET);
	HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin,GPIO_PIN_RESET);
}

/*void LED_control( int value )
{
//  for(int i = 0 ; i < 3 ; i++)
//	  HAL_GPIO_WritePin(GPIOA, (Ext_LED_1_Pin << i), ((value >> i)& 0x1));

	if(value == 0)
		HAL_GPIO_WritePin(Ext_LED_1_GPIO_Port, Ext_LED_1_Pin,GPIO_PIN_SET);
	else if(value == 1)
		HAL_GPIO_WritePin(Ext_LED_2_GPIO_Port, Ext_LED_2_Pin,GPIO_PIN_SET);
	else if(value == 2)
		HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin,GPIO_PIN_SET);
	else
	{}
}*/

void LED_control(int value)
{
    // Turn OFF all LEDs first
    HAL_GPIO_WritePin(Ext_LED_1_GPIO_Port, Ext_LED_1_Pin, GPIO_PIN_RESET);
    HAL_GPIO_WritePin(Ext_LED_2_GPIO_Port, Ext_LED_2_Pin, GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_RESET);

    // Turn ON only the selected LED based on the bitmask
    if (value & 0x01)  // Check if bit 0 is set
        HAL_GPIO_WritePin(Ext_LED_1_GPIO_Port, Ext_LED_1_Pin, GPIO_PIN_SET);
    if (value & 0x02)  // Check if bit 1 is set
        HAL_GPIO_WritePin(Ext_LED_2_GPIO_Port, Ext_LED_2_Pin, GPIO_PIN_SET);
    if (value & 0x04)  // Check if bit 2 is set
        HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_SET);
}


void led_effect_stop()
{
	for(int i=0; i<4;i++)
		xTimerStop(timer_handler[i],portMAX_DELAY);
}

void led_effect_start(int val)
{
	led_effect_stop();
	xTimerStart(timer_handler[val-1],portMAX_DELAY);
}


void LED_effect1(void)
{
	static int flag = 1;
	(flag ^= 1) ? turn_off_all_leds():turn_on_all_leds();

}

void LED_effect2(void)
{
	static int flag = 1;
	(flag ^= 1) ? turn_on_even_leds():turn_on_odd_leds();
}

void LED_effect3(void)
{
	static int i = 0;
	LED_control( 0x1 << (i++ % 3) );
}

void LED_effect4(void)
{
	static int i = 0;
	LED_control( 0x04 >> (i++ % 3) );
}
