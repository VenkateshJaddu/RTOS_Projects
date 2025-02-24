/*
 * task_handler.c
 *
 *  Created on: Feb 2, 2025
 *      Author: JadduVenkatesh
 */
#include "main.h"

int extract_cmd(command_t *cmd);
void process_cmd(command_t *cmd);

char *invalid_msg = "____________Invalid Option_____________\n";

void menu_task(void *parameter)
{
	uint32_t cmd_addr;
	command_t *cmd;
	int option;

	char *menu_msg = "**********************Menu**************************\n"
					  "___________________________________________________\n"
					  "LED Effect --> 0\n"
					  "Date & Time ---> 1\n"
					  "Exit --> 3 \n"
					  "Enter you choice here:";

	while(1)
	{
		//Send Menu message
		xQueueSend(q_print,&menu_msg,portMAX_DELAY);

		//Wait for menu commands
		xTaskNotifyWait(0,0,&cmd_addr,portMAX_DELAY);
		cmd = (command_t*)cmd_addr;
		if(cmd->len == 1)
		{
			option = cmd->payload[0]-48; /*input comes as ASCII characters, we subtract 48 (ASCII code of '0') \
										to convert it into an integer.*/
			switch(option)
			{
				case 0:
					curr_state = sLedEffect;
					xTaskNotify(led_task_handle,0,eNoAction);
					break;
				case 1:
					curr_state = sRtcMenu;
					xTaskNotify(rtc_task_handle,0,eNoAction);
					break;
				case 2:
					break;
				default:
					xQueueSend(q_print,&invalid_msg,portMAX_DELAY);
					continue;

			}

		}
		else
		{
			xQueueSend(q_print,&invalid_msg,portMAX_DELAY);
			continue;
		}

		//wait to run again when some other task notifies
		xTaskNotifyWait(0,0,NULL,portMAX_DELAY);
	}
}
void cmd_handler_task(void *parameter)
{
	BaseType_t status;
	command_t cmd;
	while(1)
	{
		/*
		 * implement notify wait
		 * process the user data(command) stored in input data queue
		 * Notify the command to relevant task
		 * */
		status = xTaskNotifyWait(0,0,NULL,pdMS_TO_TICKS(100));

		if(status == pdTRUE)
		{
			process_cmd(&cmd);
		}
	}
}

void process_cmd(command_t *cmd)
{
	extract_cmd(cmd);

	switch(curr_state)
	{
		case sMainMenu:
			xTaskNotify(menu_task_handle,(uint32_t)cmd,eSetValueWithOverwrite);
			break;
		case sLedEffect:
			xTaskNotify(led_task_handle,(uint32_t)cmd,eSetValueWithOverwrite);
		break;
		case sRtcMenu:
		case sRtcTimeConfig:
		case sRtcDateConfig:
		case sRtcReport:
			xTaskNotify(led_task_handle,(uint32_t)cmd,eSetValueWithOverwrite);
		break;

		default:
		break;
	}
}

int extract_cmd(command_t *cmd)
{
	uint8_t item;
	BaseType_t status;

	status = uxQueueMessagesWaiting(q_data);

	if(!status) return -1;

	uint8_t i;

	do
	{
		status = xQueueReceive(q_data, &item, 0);
		if(status == pdTRUE)
			cmd->payload[i++] = item;
	}while(item != '\n');

	cmd->payload[i-1] = '\0';
	cmd->len = i-1;

	return 0;
}


void print_task(void *parameter)
{
	uint32_t *msg;
	while(1)
	{
		xQueueReceive(q_print, &msg, portMAX_DELAY);
		HAL_UART_Transmit(&huart2, (uint8_t *)msg, strlen((char*)msg), HAL_MAX_DELAY);
	}
}
void led_task(void *parameter)
{
	uint32_t cmd_addr;
	command_t *cmd;
	const char* led_msg = "========================\n"
						  "|      LED Effect     |\n"
						  "========================\n"
						  "(none,e1,e2,e3,e4)\n"
						  "Enter your choice here : ";

	while(1){
		 /*Wait for notification (Notify wait) from the menu task to handle Led_task */
		xTaskNotifyWait(0,0,NULL,portMAX_DELAY);

		/*Print LED menu */
		xQueueSend(q_print,&led_msg,portMAX_DELAY);

		/*wait for LED command (Notify wait)from command task after user enters the command */
		xTaskNotifyWait(0,0,&cmd_addr,portMAX_DELAY);

		cmd = (command_t*)cmd_addr;

		if(cmd->len <= 4)
		{
			if(!strcmp((char*)cmd->payload,"none"))
				led_effect_stop();
			else if (! strcmp((char*)cmd->payload,"e1"))
				led_effect_start(1);
			else if (! strcmp((char*)cmd->payload,"e2"))
				led_effect_start(2);
			else if (! strcmp((char*)cmd->payload,"e3"))
				led_effect_start(3);
			else if (! strcmp((char*)cmd->payload,"e4"))
				led_effect_start(4);
			else
				/*print invalid message */
				xQueueSend(q_print,&invalid_msg,portMAX_DELAY);
		}else
			/*print invalid message */
			xQueueSend(q_print,&invalid_msg,portMAX_DELAY);

		/*update state variable */
		curr_state = sMainMenu;

		/*Notify menu task again */
		xTaskNotify(menu_task_handle,0,eNoAction);

	}

}
void rtc_task(void *parameter)
{
#if 0
	const char* msg_rtc1 = "========================\n"
							"|         RTC          |\n"
							"========================\n";

	const char* msg_rtc2 = "Configure Time            ----> 0\n"
							"Configure Date            ----> 1\n"
							"Enable reporting          ----> 2\n"
							"Exit                      ----> 4\n"
							"Enter your choice here : ";


	const char *msg_rtc_hh = "Enter hour(1-12):";
	const char *msg_rtc_mm = "Enter minutes(0-59):";
	const char *msg_rtc_ss = "Enter seconds(0-59):";

	const char *msg_rtc_dd  = "Enter date(1-31):";
	const char *msg_rtc_mo  ="Enter month(1-12):";
	const char *msg_rtc_dow  = "Enter day(1-7 sun:1):";
	const char *msg_rtc_yr  = "Enter year(0-99):";

	const char *msg_conf = "Configuration successful\n";
	const char *msg_rtc_report = "Enable time&date reporting(y/n)?: ";


	uint32_t cmd_addr;
	command_t *cmd;


	while(1){
		/*TODO: Notify wait (wait till someone notifies) */
		xTaskNotifyWait(0,0,NULL,portMAX_DELAY);

		/*TODO : Print the menu and show current date and time information */
		xQueueSend(q_print,&msg_rtc1,portMAX_DELAY);
		xQueueSend(q_print,&msg_rtc2,portMAX_DELAY);



		while(curr_state != sMainMenu){

			/*TODO: Wait for command notification (Notify wait) */
			xTaskNotifyWait(0,0,&cmd_addr,portMAX_DELAY);
			cmd = (command_t*)cmd_addr;

			switch(curr_state)
			{
				case sRtcMenu:{

					/*TODO: process RTC menu commands */
					break;}

				case sRtcTimeConfig:{
					/*TODO : get hh, mm, ss infor and configure RTC */

					/*TODO: take care of invalid entries */
					break;}

				case sRtcDateConfig:{

					/*TODO : get date, month, day , year info and configure RTC */

					/*TODO: take care of invalid entries */

					break;}

				case sRtcReport:{
					/*TODO: enable or disable RTC current time reporting over ITM printf */
					break;}

			}// switch end

		} //while end

		   /*TODO : Notify menu task */
		xTaskNotify(menu_task_handle,0,eNoAction);


		}//while super loop end
#endif

}
