/*
 * adcFreezeCal.c
 *
 *  Created on: Aug 10, 2019
 *      Author: jlantz
 */
/***************************** Include Files *********************************/
#include "xil_io.h"
#include "xil_types.h"
#include <stdio.h>
#include "cli.h"
#include "xparameters.h"
#include "main.h"
#include "xrfdc.h"
#include "adcFreezeCal.h"



/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/

/************************** Function Definitions ******************************/


/*****************************************************************************/
/**
*
* cli_adcFreezeCalStatus_init Add functions from this file to CLI
*
* @param	None
*
* @return	None
*
* @note		TBD
*
******************************************************************************/
void cli_adcFreezeCalStatus_init(void)
{
	CMDSTRUCT cliCmds[] = {
		//000000000011111111112222    000000000011111111112222222222333333333
		//012345678901234567890123    012345678901234567890123456789012345678
		{"## ADC Calibration ##"  , " "                                       , 0, *cmdComment   },
		{"adcFreezeCalStatus" , "- Freeze ADC calibration Status"         , 0, *adcFreezeCalStatus},
	};

	cli_addCmds(cliCmds, sizeof(cliCmds)/sizeof(cliCmds[0]));
}

/*****************************************************************************/
/**
*
* adcFreezeCalStatus TBD
*
* @param	None
*
* @return	None
*
* @note		TBD
*
******************************************************************************/
void adcFreezeCalStatus (u32 *cmdVals)
{
	u32 Tile_Id;
	u32 Block_Id;
	//int Status;
	Tile_Id = cmdVals[0];
	Block_Id = cmdVals[1];

	XRFdc_IPStatus ipStatus;
	XRFdc* RFdcInstPtr = &RFdcInst;
	//XRFdc_Cal_Freeze_Settings GetCalFreeze = {0};
	//XRFdc_Cal_Freeze_Settings SetCalFreeze = {0};

	//XRFdc_BlockStatus blockStatus;
	XRFdc_Cal_Freeze_Settings calFreezeSettings;
	// CalFrozen
	// DisableFreezePin
	// FreezeCalibration

    XRFdc_GetIPStatus(RFdcInstPtr, &ipStatus);
	xil_printf("\n\r###############################################\n\r");
	xil_printf("=== ADC Cal Freeze Report ===\n\r");


    for (Tile_Id=0; Tile_Id<=3; Tile_Id++) {
    			for(Block_Id=0; Block_Id<=1; Block_Id++) {

     				if(XRFdc_IsADCBlockEnabled(RFdcInstPtr, Tile_Id, Block_Id)) {

	//XRFdc_GetBlockStatus(RFdcInstPtr, XRFDC_DAC_TILE, Tile_Id, Block_Id, &blockStatus);
	XRFdc_GetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &calFreezeSettings);

		xil_printf("   ADC Tile%d ch%d Cal Frozen: %d\r\n", Tile_Id, Block_Id,calFreezeSettings.CalFrozen);
	//	xil_printf("    DigitalDataPathStatus: %d\r\n", blockStatus.DigitalDataPathStatus);
	//	xil_printf("    AnalogDataPathStatus:  %d\r\n", blockStatus.AnalogDataPathStatus);
	//	xil_printf("    IsFIFOFlagsEnabled:    %d\r\n", blockStatus.IsFIFOFlagsEnabled);
	//	xil_printf("    IsFIFOFlagsAsserted:   %d\r\n", blockStatus.IsFIFOFlagsAsserted);
	//	xil_printf("    DataPathClocksStatus:  %d\r\n", blockStatus.DataPathClocksStatus);
     				}
    			}
    }


/*

    XRFdc_GetIPStatus(RFdcInstPtr, &ipStatus);

	xil_printf("\r\n###############################################\r\n");
	xil_printf("Freeze Calibration.\r\n");

	//  #########################

	Status = XRFdc_GetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &GetCalFreeze);

	if (Status != XRFDC_SUCCESS) {
		return XRFDC_FAILURE;
	}
	xil_printf("\r\nFreeze Settings start : %d\r\n",GetCalFreeze);
	//  #########################
	GetCalFreeze.CalFrozen = 0;
	GetCalFreeze.DisableFreezePin = 1;
	GetCalFreeze.FreezeCalibration = 1;

	Status = XRFdc_SetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &GetCalFreeze);

	//  #########################
   sleep (00.5);
	Status = XRFdc_GetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &GetCalFreeze);

	if (Status != XRFDC_SUCCESS) {
		return XRFDC_FAILURE;
	}

	xil_printf("\r\nFreeze Settings start1 : %d\r\n",GetCalFreeze);
	//  #########################

	//  #########################
	Status = XRFdc_GetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &GetCalFreeze);

	if (Status != XRFDC_SUCCESS) {
		return XRFDC_FAILURE;
	}

	xil_printf("\r\nFreeze Settings end : %d\r\n",GetCalFreeze);
	//  #########################


	xil_printf("\r\nFreeze Settings double1 :\n\r");
*/

	/*

	//  DOUBLE....................................
	xil_printf("\r\nFreeze Settings start : %d\r\n",GetCalFreeze);
	//  #########################

	GetCalFreeze.CalFrozen = 0;
	GetCalFreeze.DisableFreezePin = 1;
	GetCalFreeze.FreezeCalibration = 0;

	Status = XRFdc_SetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &GetCalFreeze);

	//  #########################
   sleep (00.5);
	Status = XRFdc_GetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &GetCalFreeze);

	if (Status != XRFDC_SUCCESS) {
		return XRFDC_FAILURE;
	}

	xil_printf("\r\nFreeze Settings start1 : %d\r\n",GetCalFreeze);
	//  #########################

	//  #########################
	Status = XRFdc_GetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &GetCalFreeze);

	if (Status != XRFDC_SUCCESS) {
		return XRFDC_FAILURE;
	}

	xil_printf("\r\nFreeze Settings end : %d\r\n",GetCalFreeze);
	//  #########################

	// end DOUBLE...........................

	xil_printf("\r\nFreeze Settings double2 :\n\r");


	//  DOUBLE....................................
	xil_printf("\r\nFreeze Settings start : %d\r\n",GetCalFreeze);
	//  #########################

	GetCalFreeze.CalFrozen = 0;
	GetCalFreeze.DisableFreezePin = 1;
	GetCalFreeze.FreezeCalibration = 1;

	Status = XRFdc_SetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &GetCalFreeze);

	//  #########################
   sleep (00.5);
	Status = XRFdc_GetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &GetCalFreeze);

	if (Status != XRFDC_SUCCESS) {
		return XRFDC_FAILURE;
	}

	xil_printf("\r\nFreeze Settings start1 : %d\r\n",GetCalFreeze);
	//  #########################

	//  #########################
	Status = XRFdc_GetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &GetCalFreeze);

	if (Status != XRFDC_SUCCESS) {
		return XRFDC_FAILURE;
	}

	xil_printf("\r\nFreeze Settings end : %d\r\n",GetCalFreeze);
	//  #########################





	// end DOUBLE...........................

*/

	/*
	Status = XRFdc_GetMixerSettings(RFdcInstPtr, XRFDC_ADC_TILE, Tile, Block, &SetCalFreeze);
	if (Status != XRFDC_SUCCESS) {
		return XRFDC_FAILURE;
	}
	*/



	xil_printf("###############################################\r\n\n");


	return;
}

