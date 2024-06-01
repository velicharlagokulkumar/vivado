/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "helloworld.h"

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xrfdc_clk.h"
#include "xil_io.h"
#include "xparameters.h"
#include "sleep.h"
#include "xrfdc.h"


unsigned int LMK04208_CKin[1][26] = {
		{0x00160040,0x80140320,0x80140321,0x80140322,
		0xC0140023,0x40140024,0x80141E05,0x03300006,0x01300007,0x06010008,
		0x55555549,0x9102410A,0x0401100B,0x1B0C006C,0x2302886D,0x0200000E,
		0x8000800F,0xC1550410,0x00000058,0x02C9C419,0x8FA8001A,0x10001E1B,
		0x0021201C,0x0180033D,0x0200033E,0x003F001F }};
XRFdc RFdcInst;      /* RFdc driver instance */

int main()
{
int Status;

    init_platform();
	XRFdc_Config *ConfigPtr;

    print("\n\rHello RFSoC World!\n\r");

    printf("\nConfiguring Clocks...\r\n");
    LMK04208ClockConfig(1, LMK04208_CKin);
    LMX2594ClockConfig(1, 1474560);			//Set DAC/ADC clk to 1474M560

    xil_printf("  The clocks are now programmed.\r\n");
	/* Initialize the RFdc driver. */
	ConfigPtr = XRFdc_LookupConfig(RFDC_DEVICE_ID);
	if (ConfigPtr == NULL) {
		xil_printf("Failed to init RFdc driver\r\n");
		return XST_FAILURE;
	}else{
		xil_printf("\r\nSilicon Revision:\r\n\n");
	}

	/* Initializes the controller */
	Status = XRFdc_CfgInitialize(&RFdcInst, ConfigPtr);

	if (Status != XST_SUCCESS) {
		xil_printf("Failed to init RFdc controller\r\n");
		return XST_FAILURE;
	}
	else {
			xil_printf("The RFDC controller is initialized.\r\n");
		}
	// Display the Power-on Status
	rfdcStartup(NULL);

    xil_printf("\n\r------------- Startup Complete ----------------\r\n\n");

    cleanup_platform();
    return 0;
}


/*****************************************************************************/
/**
*
* Startup DAC's and ADC's
*
* @param	None
*
* @return	None
*
* @note		TBD
*
******************************************************************************/
void rfdcStartup (u32 *cmdVals) {

	int Tile_Id;
	XRFdc_IPStatus ipStatus;
	XRFdc* RFdcInstPtr = &RFdcInst;
	u32 val;

	// Calling this function gets the status of the IP
	XRFdc_GetIPStatus(RFdcInstPtr, &ipStatus);

//	xil_printf("\r\n###############################################\r\n");
	xil_printf("Data Converter startup up is in progress...\n\r");

	// Master Reset
	Xil_Out32(RFDC_BASE + 0x0004, 1);

//	xil_printf("RF Data Converters Powered up.\r\n");
	sleep(1);

	// startup
	for ( Tile_Id=0; Tile_Id<=3; Tile_Id++) {
		if (ipStatus.DACTileStatus[Tile_Id].IsEnabled == 1) {
			val = XRFdc_ReadReg16(RFdcInstPtr, XRFDC_ADC_TILE_CTRL_STATS_ADDR(Tile_Id), XRFDC_ADC_DEBUG_RST_OFFSET);
			if(val & XRFDC_DBG_RST_CAL_MASK) {
				xil_printf("  Tile: %d NOT ready.\r\n", Tile_Id);
			} else {
				XRFdc_StartUp(RFdcInstPtr, 1, Tile_Id);
				usleep(200000);
			}
		}
	}

	for ( Tile_Id=0; Tile_Id<=3; Tile_Id++) {
		if (ipStatus.ADCTileStatus[Tile_Id].IsEnabled == 1) {
			val = XRFdc_ReadReg16(RFdcInstPtr, XRFDC_ADC_TILE_CTRL_STATS_ADDR(Tile_Id), XRFDC_ADC_DEBUG_RST_OFFSET);
			if(val & XRFDC_DBG_RST_CAL_MASK) {
				xil_printf("  ADC Tile%d NOT ready.\r\n", Tile_Id);
			} else {
				XRFdc_StartUp(RFdcInstPtr, 0, Tile_Id);
				usleep(200000);
			}
		}
	}

	xil_printf("\r\nThe Power-on sequence step. 0xF is complete.\r\n");


	for ( Tile_Id=0; Tile_Id<=3; Tile_Id++) {
		if (ipStatus.DACTileStatus[Tile_Id].IsEnabled == 1) {
			val = XRFdc_ReadReg16(RFdcInstPtr, XRFDC_ADC_TILE_CTRL_STATS_ADDR(Tile_Id), XRFDC_ADC_DEBUG_RST_OFFSET);
			if(val & XRFDC_DBG_RST_CAL_MASK) {
				xil_printf("  Tile: %d NOT ready.\r\n", Tile_Id);
			} else {
				xil_printf("   DAC Tile%d Power-on Sequence Step: 0x%08x\r\n",Tile_Id,
						Xil_In32(RFDC_BASE + 0x0000C + 0x04000 + Tile_Id * 0x4000));
			}
		}
	}

	for ( Tile_Id=0; Tile_Id<=3; Tile_Id++) {
		if (ipStatus.ADCTileStatus[Tile_Id].IsEnabled == 1) {
			val = XRFdc_ReadReg16(RFdcInstPtr, XRFDC_ADC_TILE_CTRL_STATS_ADDR(Tile_Id), XRFDC_ADC_DEBUG_RST_OFFSET);
			if(val & XRFDC_DBG_RST_CAL_MASK) {
				xil_printf("  ADC Tile%d NOT ready.\r\n", Tile_Id);
			} else {
				xil_printf("   ADC Tile%d Power-on Sequence Step: 0x%08x\r\n",Tile_Id,
						Xil_In32(RFDC_BASE + 0x0000C + 0x14000 + Tile_Id * 0x4000));
			}
		}
	}


	xil_printf("\n\rData Converter start up is complete!");
//	xil_printf("\r\n###############################################\r\n");

	return;
}








