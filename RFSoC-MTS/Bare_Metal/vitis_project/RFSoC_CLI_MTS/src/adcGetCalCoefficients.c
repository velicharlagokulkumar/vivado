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
#include "adcGetCalCoefficients.h"


/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/

/************************** Function Definitions ******************************/


/*****************************************************************************/
/**
*
* cli_adcGetCalCoefficients_init Add functions from this file to CLI
*
* @param	None
*
* @return	None
*
* @note		TBD
*
******************************************************************************/
void cli_adcGetCalCoefficients_init(void)
{
	CMDSTRUCT cliCmds[] = {
		//000000000011111111112222    000000000011111111112222222222333333333
		//012345678901234567890123    012345678901234567890123456789012345678
		{"adcGetCalCoeff"     , "- <tile> <adc> Get Cal Coeff for ch"     , 2, *adcGetCalCoeff},
	};

	cli_addCmds(cliCmds, sizeof(cliCmds)/sizeof(cliCmds[0]));
}


/*****************************************************************************/
/**
*
* adcGetCalCoeff TBD
*
* @param	None
*
* @return	None
*
* @note		TBD
*
******************************************************************************/
void adcGetCalCoeff (u32 *cmdVals)
{
	u32 Tile_Id;
	u32 Block_Id;
	XRFdc_IPStatus ipStatus;
	XRFdc* RFdcInstPtr = &RFdcInst;

	//XRFdc_BlockStatus blockStatus;
	XRFdc_Calibration_Coefficients calCoefficientsOCB2;
	XRFdc_Calibration_Coefficients calCoefficientsGCB;
	XRFdc_Calibration_Coefficients calCoefficientsTSCB;

	// CalFrozen
	// DisableFreezePin
	// FreezeCalibration

	//MACRO
	//XRFDC_CAL_BLOCK_OCB2
	//XRFDC_CAL_BLOCK_GCB
	//XRFDC_CAL_BLOCK_TSCB


	Tile_Id = cmdVals[0];
	Block_Id = cmdVals[1];

    XRFdc_GetIPStatus(RFdcInstPtr, &ipStatus);
	xil_printf("\n\r###############################################\n\r");
	xil_printf("=== ADC Cal Coefficients Report ===\n\r");


 //   for (Tile_Id=0; Tile_Id<=0; Tile_Id++) {
   // 			for(Block_Id=0; Block_Id<=0; Block_Id++) {

     				if(XRFdc_IsADCBlockEnabled(RFdcInstPtr, Tile_Id, Block_Id)) {

	//XRFdc_GetBlockStatus(RFdcInstPtr, XRFDC_DAC_TILE, Tile_Id, Block_Id, &blockStatus);
     					XRFdc_GetCalCoefficients(RFdcInstPtr, Tile_Id, Block_Id,XRFDC_CAL_BLOCK_OCB2, &calCoefficientsOCB2);

     					//XRFdc_GetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &calFreezeSettings);

//		xil_printf("   ADC Tile%d ch%d Cal Frozen: %d\r\n", Tile_Id, Block_Id,calFreezeSettings.CalFrozen);
     					xil_printf("   ADC Tile%d ch%d OCB2 Cal  Coefficients: \r\n", Tile_Id, Block_Id);
     					xil_printf("      Coeff0: %d\r\n", calCoefficientsOCB2.Coeff0);
     					xil_printf("      Coeff1: %d\r\n", calCoefficientsOCB2.Coeff1);
     					xil_printf("      Coeff2: %d\r\n", calCoefficientsOCB2.Coeff2);
     					xil_printf("      Coeff3: %d\r\n", calCoefficientsOCB2.Coeff3);
     					xil_printf("      Coeff4: %d\r\n", calCoefficientsOCB2.Coeff4);
     					xil_printf("      Coeff5: %d\r\n", calCoefficientsOCB2.Coeff5);
     					xil_printf("      Coeff6: %d\r\n", calCoefficientsOCB2.Coeff6);
     					xil_printf("      Coeff7: %d\r\n", calCoefficientsOCB2.Coeff7);

     				}
    	//		}
    //}



    for (Tile_Id=0; Tile_Id<=0; Tile_Id++) {
    			for(Block_Id=0; Block_Id<=0; Block_Id++) {

     				if(XRFdc_IsADCBlockEnabled(RFdcInstPtr, Tile_Id, Block_Id)) {

	//XRFdc_GetBlockStatus(RFdcInstPtr, XRFDC_DAC_TILE, Tile_Id, Block_Id, &blockStatus);
     					XRFdc_GetCalCoefficients(RFdcInstPtr, Tile_Id, Block_Id,XRFDC_CAL_BLOCK_GCB, &calCoefficientsGCB);

     					//XRFdc_GetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &calFreezeSettings);

//		xil_printf("   ADC Tile%d ch%d Cal Frozen: %d\r\n", Tile_Id, Block_Id,calFreezeSettings.CalFrozen);
     					xil_printf("   ADC Tile%d ch%d GCB Cal  Coefficients: \r\n", Tile_Id, Block_Id);
     					xil_printf("      Coeff0: %d\r\n", calCoefficientsGCB.Coeff0);
     					xil_printf("      Coeff1: %d\r\n", calCoefficientsGCB.Coeff1);
     					xil_printf("      Coeff2: %d\r\n", calCoefficientsGCB.Coeff2);
     					xil_printf("      Coeff3: %d\r\n", calCoefficientsGCB.Coeff3);
     					xil_printf("      Coeff4: %d\r\n", calCoefficientsGCB.Coeff4);
     					xil_printf("      Coeff5: %d\r\n", calCoefficientsGCB.Coeff5);
     					xil_printf("      Coeff6: %d\r\n", calCoefficientsGCB.Coeff6);
     					xil_printf("      Coeff7: %d\r\n", calCoefficientsGCB.Coeff7);

     				}
    			}
    }



    for (Tile_Id=0; Tile_Id<=0; Tile_Id++) {
    			for(Block_Id=0; Block_Id<=0; Block_Id++) {

     				if(XRFdc_IsADCBlockEnabled(RFdcInstPtr, Tile_Id, Block_Id)) {

	//XRFdc_GetBlockStatus(RFdcInstPtr, XRFDC_DAC_TILE, Tile_Id, Block_Id, &blockStatus);
     					XRFdc_GetCalCoefficients(RFdcInstPtr, Tile_Id, Block_Id,XRFDC_CAL_BLOCK_TSCB, &calCoefficientsTSCB);

     					//XRFdc_GetCalFreeze(RFdcInstPtr, Tile_Id, Block_Id, &calFreezeSettings);

//		xil_printf("   ADC Tile%d ch%d Cal Frozen: %d\r\n", Tile_Id, Block_Id,calFreezeSettings.CalFrozen);
     					xil_printf("   ADC Tile%d ch%d TSCB Cal  Coefficients: \r\n", Tile_Id, Block_Id);
     					xil_printf("      Coeff0: %d\r\n", calCoefficientsTSCB.Coeff0);
     					xil_printf("      Coeff1: %d\r\n", calCoefficientsTSCB.Coeff1);
     					xil_printf("      Coeff2: %d\r\n", calCoefficientsTSCB.Coeff2);
     					xil_printf("      Coeff3: %d\r\n", calCoefficientsTSCB.Coeff3);
     					xil_printf("      Coeff4: %d\r\n", calCoefficientsTSCB.Coeff4);
     					xil_printf("      Coeff5: %d\r\n", calCoefficientsTSCB.Coeff5);
     					xil_printf("      Coeff6: %d\r\n", calCoefficientsTSCB.Coeff6);
     					xil_printf("      Coeff7: %d\r\n", calCoefficientsTSCB.Coeff7);

     				}
    			}
    }




	xil_printf("###############################################\r\n\n");


	return;
}

