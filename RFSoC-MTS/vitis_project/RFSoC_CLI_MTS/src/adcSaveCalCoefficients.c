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
#include "adcSaveCalCoefficients.h"


/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/
u32 calCoefficientsOCB2_Coeff0;
u32 calCoefficientsOCB2_Coeff1;
u32 calCoefficientsOCB2_Coeff2;
u32 calCoefficientsOCB2_Coeff3;
u32 calCoefficientsOCB2_Coeff4;
u32 calCoefficientsOCB2_Coeff5;
u32 calCoefficientsOCB2_Coeff6;
u32 calCoefficientsOCB2_Coeff7;
u32 calCoefficientsGCB_Coeff0;
u32 calCoefficientsGCB_Coeff1;
u32 calCoefficientsGCB_Coeff2;
u32 calCoefficientsGCB_Coeff3;
u32 calCoefficientsGCB_Coeff4;
u32 calCoefficientsGCB_Coeff5;
u32 calCoefficientsGCB_Coeff6;
u32 calCoefficientsGCB_Coeff7;
u32 calCoefficientsTSCB_Coeff0;
u32 calCoefficientsTSCB_Coeff1;
u32 calCoefficientsTSCB_Coeff2;
u32 calCoefficientsTSCB_Coeff3;
u32 calCoefficientsTSCB_Coeff4;
u32 calCoefficientsTSCB_Coeff5;
u32 calCoefficientsTSCB_Coeff6;
u32 calCoefficientsTSCB_Coeff7;


/************************** Function Definitions ******************************/


/*****************************************************************************/
/**
*
* cli_adcSaveCalCoeff_init Add functions from this file to CLI
*
* @param	None
*
* @return	None
*
* @note		TBD
*
******************************************************************************/
void cli_adcSaveCalCoeff_init(void)
{
	CMDSTRUCT cliCmds[] = {
		//000000000011111111112222    000000000011111111112222222222333333333
		//012345678901234567890123    012345678901234567890123456789012345678
		{"adcSaveCalCoeff"    , "- <tile> <adc> Save Cal Coeff for ch"    , 2, *adcSaveCalCoeff},
	};

	cli_addCmds(cliCmds, sizeof(cliCmds)/sizeof(cliCmds[0]));
}

/*****************************************************************************/
/**
*
* adcLoadCalCoeff TBD
*
* @param	None
*
* @return	None
*
* @note		TBD
*
******************************************************************************/
void adcSaveCalCoeff (u32 *cmdVals)
{
	u32 Tile_Id;
	u32 Block_Id;
	Tile_Id = cmdVals[0];
	Block_Id = cmdVals[1];
	XRFdc_IPStatus ipStatus;
	XRFdc* RFdcInstPtr = &RFdcInst;

	//XRFdc_BlockStatus blockStatus;
	XRFdc_Calibration_Coefficients calCoefficientsOCB2;
	XRFdc_Calibration_Coefficients calCoefficientsGCB;
	XRFdc_Calibration_Coefficients calCoefficientsTSCB;

    XRFdc_GetIPStatus(RFdcInstPtr, &ipStatus);
	xil_printf("\n\r###############################################\n\r");
	xil_printf("=== ADC Save Coefficients Report ===\n\r");

     				if(XRFdc_IsADCBlockEnabled(RFdcInstPtr, Tile_Id, Block_Id)) {

     					XRFdc_GetCalCoefficients(RFdcInstPtr, Tile_Id, Block_Id,XRFDC_CAL_BLOCK_OCB2, &calCoefficientsOCB2);
     					sleep(1);

     					xil_printf("   ADC Tile%d ch%d OCB2 Cal  Coefficients: \r\n", Tile_Id, Block_Id);
     					xil_printf("      Coeff0: %d\r\n", calCoefficientsOCB2.Coeff0);
     					xil_printf("      Coeff1: %d\r\n", calCoefficientsOCB2.Coeff1);
     					xil_printf("      Coeff2: %d\r\n", calCoefficientsOCB2.Coeff2);
     					xil_printf("      Coeff3: %d\r\n", calCoefficientsOCB2.Coeff3);
     					xil_printf("      Coeff4: %d\r\n", calCoefficientsOCB2.Coeff4);
     					xil_printf("      Coeff5: %d\r\n", calCoefficientsOCB2.Coeff5);
     					xil_printf("      Coeff6: %d\r\n", calCoefficientsOCB2.Coeff6);
     					xil_printf("      Coeff7: %d\r\n", calCoefficientsOCB2.Coeff7);

     					calCoefficientsOCB2_Coeff0 =  calCoefficientsOCB2.Coeff0;
     					calCoefficientsOCB2_Coeff1 =  calCoefficientsOCB2.Coeff1;
     					calCoefficientsOCB2_Coeff2 =  calCoefficientsOCB2.Coeff2;
     					calCoefficientsOCB2_Coeff3 =  calCoefficientsOCB2.Coeff3;
     					calCoefficientsOCB2_Coeff4 =  calCoefficientsOCB2.Coeff4;
     					calCoefficientsOCB2_Coeff5 =  calCoefficientsOCB2.Coeff5;
     					calCoefficientsOCB2_Coeff6 =  calCoefficientsOCB2.Coeff6;
     					calCoefficientsOCB2_Coeff7 =  calCoefficientsOCB2.Coeff7;

     				}

     				if(XRFdc_IsADCBlockEnabled(RFdcInstPtr, Tile_Id, Block_Id)) {

     					sleep(1);
     					XRFdc_GetCalCoefficients(RFdcInstPtr, Tile_Id, Block_Id,XRFDC_CAL_BLOCK_GCB, &calCoefficientsGCB);
     					sleep(3);

     					xil_printf("   ADC Tile%d ch%d GCB Cal  Coefficients: \r\n", Tile_Id, Block_Id);
     					xil_printf("      Coeff0: %d\r\n", calCoefficientsGCB.Coeff0);
     					xil_printf("      Coeff1: %d\r\n", calCoefficientsGCB.Coeff1);
     					xil_printf("      Coeff2: %d\r\n", calCoefficientsGCB.Coeff2);
     					xil_printf("      Coeff3: %d\r\n", calCoefficientsGCB.Coeff3);
     					xil_printf("      Coeff4: %d\r\n", calCoefficientsGCB.Coeff4);
     					xil_printf("      Coeff5: %d\r\n", calCoefficientsGCB.Coeff5);
     					xil_printf("      Coeff6: %d\r\n", calCoefficientsGCB.Coeff6);
     					xil_printf("      Coeff7: %d\r\n", calCoefficientsGCB.Coeff7);
     					calCoefficientsGCB_Coeff0 =  calCoefficientsGCB.Coeff0;
     					calCoefficientsGCB_Coeff1 =  calCoefficientsGCB.Coeff1;
     					calCoefficientsGCB_Coeff2 =  calCoefficientsGCB.Coeff2;
     					calCoefficientsGCB_Coeff3 =  calCoefficientsGCB.Coeff3;
     					calCoefficientsGCB_Coeff4 =  calCoefficientsGCB.Coeff4;
     					calCoefficientsGCB_Coeff5 =  calCoefficientsGCB.Coeff5;
     					calCoefficientsGCB_Coeff6 =  calCoefficientsGCB.Coeff6;
     					calCoefficientsGCB_Coeff7 =  calCoefficientsGCB.Coeff7;
     				}

     				if(XRFdc_IsADCBlockEnabled(RFdcInstPtr, Tile_Id, Block_Id)) {
     					sleep(1);
     					XRFdc_GetCalCoefficients(RFdcInstPtr, Tile_Id, Block_Id,XRFDC_CAL_BLOCK_TSCB, &calCoefficientsTSCB);
     					sleep(1);

     					xil_printf("   ADC Tile%d ch%d TSCB Cal  Coefficients: \r\n", Tile_Id, Block_Id);
     					xil_printf("      Coeff0: %d\r\n", calCoefficientsTSCB.Coeff0);
     					xil_printf("      Coeff1: %d\r\n", calCoefficientsTSCB.Coeff1);
     					xil_printf("      Coeff2: %d\r\n", calCoefficientsTSCB.Coeff2);
     					xil_printf("      Coeff3: %d\r\n", calCoefficientsTSCB.Coeff3);
     					xil_printf("      Coeff4: %d\r\n", calCoefficientsTSCB.Coeff4);
     					xil_printf("      Coeff5: %d\r\n", calCoefficientsTSCB.Coeff5);
     					xil_printf("      Coeff6: %d\r\n", calCoefficientsTSCB.Coeff6);
     					xil_printf("      Coeff7: %d\r\n", calCoefficientsTSCB.Coeff7);
     					calCoefficientsTSCB_Coeff0 =  calCoefficientsTSCB.Coeff0;
     					calCoefficientsTSCB_Coeff1 =  calCoefficientsTSCB.Coeff1;
     					calCoefficientsTSCB_Coeff2 =  calCoefficientsTSCB.Coeff2;
     					calCoefficientsTSCB_Coeff3 =  calCoefficientsTSCB.Coeff3;
     					calCoefficientsTSCB_Coeff4 =  calCoefficientsTSCB.Coeff4;
     					calCoefficientsTSCB_Coeff5 =  calCoefficientsTSCB.Coeff5;
     					calCoefficientsTSCB_Coeff6 =  calCoefficientsTSCB.Coeff6;
     					calCoefficientsTSCB_Coeff7 =  calCoefficientsTSCB.Coeff7;
     				}

	xil_printf("###############################################\r\n\n");

	return;
}

