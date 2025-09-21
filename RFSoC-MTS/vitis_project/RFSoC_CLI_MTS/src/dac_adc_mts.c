


/***************************** Include Files *********************************/
#include <stdio.h>
#include <stdlib.h>
#include "xil_io.h"
#include "xil_types.h"
#include "cli.h"
#include "xparameters.h"
#include "xrfdc.h"
#include "xrfdc_mts.h"
#include "main.h"
#include "dac_adc_mts.h"


/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/
int mygetline(void);

/************************** Variable Definitions *****************************/

XRFdc_MultiConverter_Sync_Config ADC_Sync_Config;
XRFdc_MultiConverter_Sync_Config DAC_Sync_Config;


/************************** Function Definitions ******************************/


/*****************************************************************************/
/**
*
* cli_cmd_func_dac_init Add functions from this file to CLI
*
* @param	None
*
* @return	None
*
* @note		TBD
*
******************************************************************************/
void cli_cmd_mts_init(void)
{
	CMDSTRUCT cliCmds[] = {
		//000000000011111111112222    000000000011111111112222222222333333333
		//012345678901234567890123    012345678901234567890123456789012345678
		{"################### DAC and ADC MTS ####################" , " " , 0, *cmdComment   },
		{"dacMTS"             , "<tileMask> - DAC MTS"                    , 1, *dacMTS},
		{"dacMTSwl"           , "<tileMask> - DAC MTS with fixed latency" , 1, *dacMTSwl},
		{"adcMTS"             , "<tileMask> - ADC MTS"                    , 1, *adcMTS},
		{"adcMTSwl"           , "<tileMask> - ADC MTS with fixed latency" , 1, *adcMTSwl},
		{"dacAdcMTSStatus"    , "- Dump DAC & ADC Sync status"            , 0, *dacAdcMTSStatus},
		{" "                       , " "                                  , 0, *cmdComment   },

	};

	cli_addCmds(cliCmds, sizeof(cliCmds)/sizeof(cliCmds[0]));
}




/*****************************************************************************/
/**
*
* Dac Sync Set
*
* @param	cmdVals[0] bit pattern for DAC tiles to sync. I.E Dac tiles 0 and 1 = 0x3
*           cmdVals[1] 0=event src tile, 1=pl event
*
* @return	None
*
* @note		TBD
*
******************************************************************************/
void dacMTS(u32 *cmdVals)
{
	XRFdc* RFdcInstPtr = &RFdcInst;
	u32 tiles;
	int status;
    int i;
    u32 factor;

	tiles = cmdVals[0];

	// Set MTS
	xil_printf("\r\n###############################################\r\n");
	xil_printf("Enabling DAC Multi-Tile Synchronization...\n\r\n");

    XRFdc_MultiConverter_Init (&DAC_Sync_Config, 0, 0);
    DAC_Sync_Config.Tiles = tiles;	/* Sync DAC tiles as defined by bits set */
    xil_printf("DAC_Sync_Config.Tiles: 0x%08x\r\n", DAC_Sync_Config.Tiles);
	xil_printf("\n=== Multi-Tile Synchronization Metal Log Report ===\r\n");
   status = XRFdc_MultiConverter_Sync(RFdcInstPtr, XRFDC_DAC_TILE, &DAC_Sync_Config);
    if(status != XRFDC_MTS_OK) {
    	xil_printf("XRFdc_MultiConverter_Sync() FAILED\r\n");
    	return;
    }



    if(status == XRFDC_MTS_OK) {
    	xil_printf("\n=== Multi-Tile Sync Report ===\r\n");
    	for(i=0; i<4; i++) {
    		if((1<<i)&DAC_Sync_Config.Tiles) {
                XRFdc_GetInterpolationFactor(RFdcInstPtr, i, 0, &factor);
                xil_printf("    DAC%d: Latency(T1) =%3d, Adjusted Delay"
				 "    Offset(T%d) =%3d\r\n", i, DAC_Sync_Config.Latency[i],
						 factor, DAC_Sync_Config.Offset[i]);
        	}


    	}
		xil_printf("\n\rDAC Multi-Tile Synchronization is complete.");
		xil_printf("\r\n###############################################\r\n\n");

	}


    return;
}


int mygetline()
{
	char line[10];
	int i=0;
	char mychar;
	int finalVal;

	while(1) {
		 mychar=inbyte();
		 if (mychar == 0x0a) continue;
		 if (mychar == 0x0d) break;
		 if(i>=8) break;
		 xil_printf("%c", mychar);
		 //xil_printf("You pressed %c (%x)\r\n", mychar, mychar);
		 line[i++]=mychar;
	}

	line[i] = 0;
	finalVal = atoi(&line[0]);

return finalVal;
}

/*****************************************************************************/
/**
*
* Dac Sync Set with fixed latency
*
* @param	Keyboard entry required
*
* @return	None
*
* @note		TBD
*
******************************************************************************/
void dacMTSwl(u32 *cmdVals)
{
	XRFdc* RFdcInstPtr = &RFdcInst;
	u32 tiles;
	int i;
	int status;
	//u32 latency_spec;
	u32 factor;
	int lat_test;
	xil_printf("\r\n###############################################\r\n");
	xil_printf("Enabling DAC Multi-Tile Synchronization with fixed latency...\n\r\n");

	xil_printf("Set latency to : ");
	lat_test = mygetline();
	xil_printf("\r\n    Latency set to : %d\r\n",lat_test);

//	xil_printf("Set latency to : ");
	//latency_spec = mygetline();
	//glblResponse2("Set latency to : ", latency_spec);

//	xil_printf("Latency set to : %03 : \r\n",latency_spec);

	tiles = cmdVals[0];

	//mygetline(&latency_spec);
	// Set MTS
    XRFdc_MultiConverter_Init (&DAC_Sync_Config, 0, 0);
    DAC_Sync_Config.Tiles = tiles;	/* Sync DAC tiles as defined by bits set */
    DAC_Sync_Config.Target_Latency = lat_test;
    xil_printf("DAC_Sync_Config.Tiles: 0x%08x\r\n", DAC_Sync_Config.Tiles);
	xil_printf("\n=== Multi-Tile Synchronization Metal Log Report ===\r\n");
    status = XRFdc_MultiConverter_Sync(RFdcInstPtr, XRFDC_DAC_TILE, &DAC_Sync_Config);
    if(status != XRFDC_MTS_OK) {
    	xil_printf("XRFdc_MultiConverter_Sync() FAILED\r\n");
    	return;
    }

     if(status == XRFDC_MTS_OK) {
    	xil_printf("\n=== Multi-Tile Sync Report ===\r\n");
    	for(i=0; i<4; i++) {
    		if((1<<i)&DAC_Sync_Config.Tiles) {
                XRFdc_GetInterpolationFactor(RFdcInstPtr, i, 0, &factor);
                xil_printf("    DAC%d: Latency(T1) =%3d, Adjusted Delay"
				 "    Offset(T%d) =%3d\r\n", i, DAC_Sync_Config.Latency[i],
						 factor, DAC_Sync_Config.Offset[i]);
        	}


    	}
		xil_printf("\n\rDAC Multi-Tile Synchronization with fixed latency is complete.");
		xil_printf("\r\n###############################################\r\n\n");

	}
    return;
}


//******************************************************************************/
void adcMTSwl(u32 *cmdVals)
{
	XRFdc* RFdcInstPtr = &RFdcInst;
	u32 tiles;
	int i;
	int status;
	int mygetline(void);
	//u32 latency_spec;
	u32 factor;
	int lat_test;
	xil_printf("\r\n###############################################\r\n");
	xil_printf("Enabling ADC Multi-Tile Synchronization with fixed latency...\n\r\n");

	xil_printf("Set latency to : ");
	lat_test = mygetline();
	xil_printf("\r\n    Latency set to : %d\r\n",lat_test);

//	xil_printf("Set latency to : ");
	//latency_spec = mygetline();
	//glblResponse2("Set latency to : ", latency_spec);

//	xil_printf("Latency set to : %03 : \r\n",latency_spec);

	tiles = cmdVals[0];

	//mygetline(&latency_spec);
	// Set MTS
    XRFdc_MultiConverter_Init (&ADC_Sync_Config, 0, 0);
    ADC_Sync_Config.Tiles = tiles;	/* Sync DAC tiles as defined by bits set */
    ADC_Sync_Config.Target_Latency = lat_test;
    xil_printf("ADC_Sync_Config.Tiles: 0x%08x\r\n", ADC_Sync_Config.Tiles);
	xil_printf("\n=== Multi-Tile Synchronization Metal Log Report ===\r\n");
    status = XRFdc_MultiConverter_Sync(RFdcInstPtr, XRFDC_ADC_TILE, &ADC_Sync_Config);
    if(status != XRFDC_MTS_OK) {
    	xil_printf("XRFdc_MultiConverter_Sync() FAILED\r\n");
    	return;
    }

     if(status == XRFDC_MTS_OK) {
    	xil_printf("\n=== Multi-Tile Sync Report ===\r\n");
    	for(i=0; i<4; i++) {
    		if((1<<i)&ADC_Sync_Config.Tiles) {
                XRFdc_GetDecimationFactor(RFdcInstPtr, i, 0, &factor);
                xil_printf("    ADC%d: Latency(T1) =%3d, Adjusted Delay"
				 "    Offset(T%d) =%3d\r\n", i, ADC_Sync_Config.Latency[i],
						 factor, ADC_Sync_Config.Offset[i]);
        	}


    	}
		xil_printf("\n\rADC Multi-Tile Synchronization with fixed latency is complete.");
		xil_printf("\r\n###############################################\r\n\n");

	}


    return;
}



/*****************************************************************************/
/**
*
* Adc Sync Set
*
* @param	cmdVals[0] bit pattern for ADC tiles to sync. I.E ADC tiles 0 and 1 = 0x3
*           cmdVals[1] 0=event src tile, 1=pl event
*
* @return	None
*
* @note		TBD
*
******************************************************************************/
void adcMTS(u32 *cmdVals)
{
	XRFdc* RFdcInstPtr = &RFdcInst;
	u32 tiles;
	int status;
    int i;
    u32 factor;

	tiles = cmdVals[0];
	xil_printf("\r\n###############################################\r\n");
	xil_printf("Enabling ADC Multi-Tile Synchronization...\n\r\n");

	// Set MTS
    XRFdc_MultiConverter_Init (&ADC_Sync_Config, 0, 0);
	ADC_Sync_Config.Tiles = tiles;	/* Sync ADC tiles as defined by bits set */
    xil_printf("ADC_Sync_Config.Tiles: 0x%08x\r\n", ADC_Sync_Config.Tiles);
	xil_printf("\n=== Multi-Tile Synchronization Metal Log Report ===\r\n");
    status = XRFdc_MultiConverter_Sync(RFdcInstPtr, XRFDC_ADC_TILE, &ADC_Sync_Config);
    if(status != XRFDC_MTS_OK) {
    	xil_printf("XRFdc_MultiConverter_Sync() FAILED with error 0x%08x\r\n", status);
    }


    if(status == XRFDC_MTS_OK) {
    	xil_printf("\n=== Multi-Tile Sync Report ===\r\n");
    	for(i=0; i<4; i++) {
    		if((1<<i)&ADC_Sync_Config.Tiles) {
                XRFdc_GetDecimationFactor(RFdcInstPtr, i, 0, &factor);
                xil_printf("    ADC%d: Latency(T1) =%3d, Adjusted Delay"
				 "    Offset(T%d) =%3d\r\n", i, ADC_Sync_Config.Latency[i],
						 factor, ADC_Sync_Config.Offset[i]);
        	}


    	}
		xil_printf("\n\rADC Multi-Tile Synchronization is complete.");
		xil_printf("\r\n###############################################\r\n\n");

    }

    return;
}

/*****************************************************************************/
/**
*
* Dac and ADC Sync Dump
*
* @param	None
*
* @return	None
*
* @note		Report Overall Latency in T1 (Sample Clocks) and
*           Offsets (in terms of PL words) added to each FIFO
*
******************************************************************************/
void dacAdcMTSStatus(u32 *cmdVals)
{
	int i;
	u32 factor;
	XRFdc* RFdcInstPtr = &RFdcInst;
	xil_printf("\r\n###############################################\r\n");
    xil_printf("=== Multi-Tile Sync Report ===\r\n");
    for(i=0; i<4; i++) {
        if((1<<i)&DAC_Sync_Config.Tiles) {
                XRFdc_GetInterpolationFactor(RFdcInstPtr, i, 0, &factor);
                xil_printf("DAC%d: Latency(T1) =%3d, Adjusted Delay"
				 "Offset(T%d) =%3d\r\n", i, DAC_Sync_Config.Latency[i],
						 factor, DAC_Sync_Config.Offset[i]);
        }
    }

    for(i=0; i<4; i++) {
        if((1<<i)&ADC_Sync_Config.Tiles) {
                XRFdc_GetDecimationFactor(RFdcInstPtr, i, 0, &factor);
                xil_printf("ADC%d: Latency(T1) =%3d, Adjusted Delay"
				 "Offset(T%d) =%3d\r\n", i, ADC_Sync_Config.Latency[i],
						 factor, ADC_Sync_Config.Offset[i]);
        }
    }
	xil_printf("###############################################\r\n\n");
    return;
}





