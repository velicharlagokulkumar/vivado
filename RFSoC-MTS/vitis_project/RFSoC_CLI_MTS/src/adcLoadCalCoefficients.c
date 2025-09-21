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
#include "adcLoadCalCoefficients.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/

/************************** Function Definitions ******************************/


/*****************************************************************************/
/**
*
* cli_adcLoadCalCoeff_init Add functions from this file to CLI
*
* @param	None
*
* @return	None
*
* @note		TBD
*
******************************************************************************/
void cli_adcLoadCalCoeff_init(void)
{
	CMDSTRUCT cliCmds[] = {
		//000000000011111111112222    000000000011111111112222222222333333333
		//012345678901234567890123    012345678901234567890123456789012345678
		{"adcLoadCalCoeff"    , "- <tile> <adc> Load Cal Coeff for ch"    , 2, *adcLoadCalCoeff},
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
void adcLoadCalCoeff (u32 *cmdVals)
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
		xil_printf("=== ADC Load Coefficients Report ===\n\r");


	     				if(XRFdc_IsADCBlockEnabled(RFdcInstPtr, Tile_Id, Block_Id)) {

	     	     			calCoefficientsOCB2.Coeff0 =  calCoefficientsOCB2_Coeff0;
	     	     			calCoefficientsOCB2.Coeff1 =  calCoefficientsOCB2_Coeff1;
	     	     			calCoefficientsOCB2.Coeff2 =  calCoefficientsOCB2_Coeff2;
	     	     			calCoefficientsOCB2.Coeff3 =  calCoefficientsOCB2_Coeff3;
	     	     			calCoefficientsOCB2.Coeff4 =  calCoefficientsOCB2_Coeff4;
	     	     			calCoefficientsOCB2.Coeff5 =  calCoefficientsOCB2_Coeff5;
	     	     			calCoefficientsOCB2.Coeff6 =  calCoefficientsOCB2_Coeff6;
	     	     			calCoefficientsOCB2.Coeff7 =  calCoefficientsOCB2_Coeff7;

	     	     			sleep(1);

	     	     			calCoefficientsGCB.Coeff0 =  calCoefficientsGCB_Coeff0;
	     	     			calCoefficientsGCB.Coeff1 =  calCoefficientsGCB_Coeff1;
	     	     			calCoefficientsGCB.Coeff2 =  calCoefficientsGCB_Coeff2;
	     	     			calCoefficientsGCB.Coeff3 =  calCoefficientsGCB_Coeff3;
	     	     			calCoefficientsGCB.Coeff4 =  calCoefficientsGCB_Coeff4;
	     	     			calCoefficientsGCB.Coeff5 =  calCoefficientsGCB_Coeff5;
	     	     			calCoefficientsGCB.Coeff6 =  calCoefficientsGCB_Coeff6;
	     	     			calCoefficientsGCB.Coeff7 =  calCoefficientsGCB_Coeff7;

	     	     			sleep(1);

	     	     			calCoefficientsTSCB.Coeff0 =  calCoefficientsTSCB_Coeff0;
	     	     			calCoefficientsTSCB.Coeff1 =  calCoefficientsTSCB_Coeff1;
	     	     			calCoefficientsTSCB.Coeff2 =  calCoefficientsTSCB_Coeff2;
	     	     			calCoefficientsTSCB.Coeff3 =  calCoefficientsTSCB_Coeff3;
	     	     			calCoefficientsTSCB.Coeff4 =  calCoefficientsTSCB_Coeff4;
	     	     			calCoefficientsTSCB.Coeff5 =  calCoefficientsTSCB_Coeff5;
	     	     			calCoefficientsTSCB.Coeff6 =  calCoefficientsTSCB_Coeff6;
	     	     			calCoefficientsTSCB.Coeff7 =  calCoefficientsTSCB_Coeff7;


	     	     			sleep(1);
	  //   	     			xil_printf("   Setting GCB Coefficients... \r\n");
	     	     			XRFdc_SetCalCoefficients(RFdcInstPtr, Tile_Id, Block_Id,XRFDC_CAL_BLOCK_GCB, &calCoefficientsGCB);
	     	     			xil_printf("   Set GCB Coefficients complete. \r\n");
	     	     			sleep(1);
	  //   	     			xil_printf("   Setting TSCB Coefficients... \r\n");
	     	     			XRFdc_SetCalCoefficients(RFdcInstPtr, Tile_Id, Block_Id,XRFDC_CAL_BLOCK_TSCB, &calCoefficientsTSCB);
	     	     			xil_printf("   Set TSCB Coefficients complete. \r\n");
	     	     			sleep(1);


	     	     			XRFdc_GetCalCoefficients(RFdcInstPtr, Tile_Id, Block_Id,XRFDC_CAL_BLOCK_GCB, &calCoefficientsGCB);

	     	     			sleep(1);

    						XRFdc_GetCalCoefficients(RFdcInstPtr, Tile_Id, Block_Id,XRFDC_CAL_BLOCK_TSCB, &calCoefficientsTSCB);
    						sleep(1);

    						xil_printf("=== Set Coefficients Validation Report ===. \r\n");
    						xil_printf("    GCB Coeff compare : Saved     : Loaded    : Difference\r\n");
        					xil_printf("    GCB Coeff0 compare: %d : %d : %d\r\n", calCoefficientsGCB_Coeff0, calCoefficientsGCB.Coeff0,calCoefficientsGCB.Coeff0 - calCoefficientsGCB_Coeff0 );
    						xil_printf("    GCB Coeff1 compare: %d : %d : %d\r\n", calCoefficientsGCB_Coeff1, calCoefficientsGCB.Coeff1,calCoefficientsGCB.Coeff1 - calCoefficientsGCB_Coeff1 );
    						xil_printf("    GCB Coeff2 compare: %d : %d : %d\r\n", calCoefficientsGCB_Coeff2, calCoefficientsGCB.Coeff2,calCoefficientsGCB.Coeff2 - calCoefficientsGCB_Coeff2 );
    						xil_printf("    GCB Coeff3 compare: %d : %d : %d\r\n", calCoefficientsGCB_Coeff3, calCoefficientsGCB.Coeff3,calCoefficientsGCB.Coeff3 - calCoefficientsGCB_Coeff3 );
    						xil_printf("    GCB Coeff4 compare: %d : %d : %d\r\n", calCoefficientsGCB_Coeff4, calCoefficientsGCB.Coeff4,calCoefficientsGCB.Coeff4 - calCoefficientsGCB_Coeff4 );
    						xil_printf("    GCB Coeff5 compare: %d : %d : %d\r\n", calCoefficientsGCB_Coeff5, calCoefficientsGCB.Coeff5,calCoefficientsGCB.Coeff5 - calCoefficientsGCB_Coeff5 );
    						xil_printf("    GCB Coeff6 compare: %d : %d : %d\r\n", calCoefficientsGCB_Coeff6, calCoefficientsGCB.Coeff6,calCoefficientsGCB.Coeff6 - calCoefficientsGCB_Coeff6 );
    						xil_printf("    GCB Coeff7 compare: %d : %d : %d\r\n\n", calCoefficientsGCB_Coeff7, calCoefficientsGCB.Coeff7,calCoefficientsGCB.Coeff7 - calCoefficientsGCB_Coeff7 );

    						xil_printf("    TSCB Coeff compare : Saved   : Loaded  : Difference\r\n");
    						xil_printf("    TSCB Coeff0 compare: %d : %d : %d\r\n", calCoefficientsTSCB_Coeff0, calCoefficientsTSCB.Coeff0,calCoefficientsTSCB.Coeff0 - calCoefficientsTSCB_Coeff0 );
    						xil_printf("    TSCB Coeff1 compare: %d : %d : %d\r\n", calCoefficientsTSCB_Coeff1, calCoefficientsTSCB.Coeff1,calCoefficientsTSCB.Coeff1 - calCoefficientsTSCB_Coeff1 );
    						xil_printf("    TSCB Coeff2 compare: %d : %d : %d\r\n", calCoefficientsTSCB_Coeff2, calCoefficientsTSCB.Coeff2,calCoefficientsTSCB.Coeff2 - calCoefficientsTSCB_Coeff2 );
    						xil_printf("    TSCB Coeff3 compare: %d : %d : %d\r\n", calCoefficientsTSCB_Coeff3, calCoefficientsTSCB.Coeff3,calCoefficientsTSCB.Coeff3 - calCoefficientsTSCB_Coeff3 );
    						xil_printf("    TSCB Coeff4 compare: %d : %d : %d\r\n", calCoefficientsTSCB_Coeff4, calCoefficientsTSCB.Coeff4,calCoefficientsTSCB.Coeff4 - calCoefficientsTSCB_Coeff4 );
    						xil_printf("    TSCB Coeff5 compare: %d : %d : %d\r\n", calCoefficientsTSCB_Coeff5, calCoefficientsTSCB.Coeff5,calCoefficientsTSCB.Coeff5 - calCoefficientsTSCB_Coeff5 );
    						xil_printf("    TSCB Coeff6 compare: %d : %d : %d\r\n", calCoefficientsTSCB_Coeff6, calCoefficientsTSCB.Coeff6,calCoefficientsTSCB.Coeff6 - calCoefficientsTSCB_Coeff6 );
    						xil_printf("    TSCB Coeff7 compare: %d : %d : %d\r\n", calCoefficientsTSCB_Coeff7, calCoefficientsTSCB.Coeff7,calCoefficientsTSCB.Coeff7 - calCoefficientsTSCB_Coeff7 );
     				}

	xil_printf("###############################################\r\n\n");

	return;
}




