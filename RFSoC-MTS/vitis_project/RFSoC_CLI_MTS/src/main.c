
/***************************** Include Files *********************************/
#include <stdio.h>
#include <stdarg.h>
#include "main.h"
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"
#include "xstatus.h"
#include "xil_printf.h"
#include "xrfdc.h"
#include "xrfdc_clk.h"
#include <metal/log.h>
#include "metal/sys.h"
#include "cli.h"


// Includes for user added CLI functions used in this file
#include "cmd_func_mem.h"
#include "rfdc_poweron_status.h"
#include "cmd_func_dac.h"
#include "adcGetCalCoefficients.h"
#include "adcFreezeCal.h"
#include "adcSetFreezeCal.h"
#include "adcSetUnFreezeCal.h"
#include "adcSaveCalCoefficients.h"
#include "adcLoadCalCoefficients.h"
#include "adcDisableCoeffOvrd.h"
#include "rfdc_nyquistzone.h"
#include "cmd_dac_adc_int_dec.h"
#include "dac_adc_mts.h"
#include "cmd_dac_adc_int_dec.h"



/******************** Constant Definitions **********************************/
#define ENABLE_METAL_PRINTS


/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/

void my_metal_default_log_handler(enum metal_log_level level,
			       const char *format, ...);

/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */
XRFdc RFdcInst;      /* RFdc driver instance */


volatile u32* constArray = (u32*) CONSTANTS_BASE;


//////////////////////////////
// zcu111 CLK settings

// Without MTS
/*
unsigned int LMK04208_CKin[1][26] = {
		{0x00160040,0x80140320,0x80140321,0x80140322,
		0xC0140023,0x40140024,0x80141E05,0x03300006,0x01300007,0x06010008,
		0x55555549,0x9102410A,0x0401100B,0x1B0C006C,0x2302886D,0x0200000E,
		0x8000800F,0xC1550410,0x00000058,0x02C9C419,0x8FA8001A,0x10001E1B,
		0x0021201C,0x0180033D,0x0200033E,0x003F001F }};
*/

// With MTS - 184M axis clk
/*unsigned int LMK04208_CKin[1][26] = {
		{0x00160040,0x00143000,0x00143001,0x00140202,0xC0140023,
				0x40140024,0x80141E05,0x01100006,0x01100007,0x06010008,
				0x55555549,0x9102410A,0x0401100B,0x1B0C006C,0x2302886D,
				0x0200000E,0x8000800F,0xC1550410,0x00000058,0x02C9C419,
				0x8FA8001A,0x10001E1B,0x0021201C,0x0180031D,0x0200031E,
				0x003F001F }};
*/
// With MTS - 92.16M axis clk
/*
unsigned int LMK04208_CKin[1][26] = {
		{0x00160040,0x00143000,0x00143001,0x00140402,0xC0140023,
				0x40140024,0x80141E05,0x01100006,0x01100007,0x06010008,
				0x55555549,0x9102410A,0x0401100B,0x1B0C006C,0x2302886D,
				0x0200000E,0x8000800F,0xC1550410,0x00000058,0x02C9C419,
				0x8FA8001A,0x10001E1B,0x0021201C,0x0180031D,0x0200031E,0x003F001F}};
*/
// With MTS - 92.16M axis clk 5.76M SYSREF
/*
unsigned int LMK04208_CKin[1][26] = {
		{0x00160040,0x00144000,0x00144001,0x00140402,0xC0140023,
				0x40140024,0x80141E05,0x01100006,0x01100007,0x06010008,
				0x55555549,0x9102410A,0x0401100B,0x1B0C006C,0x2302886D,
				0x0200000E,0x8000800F,0xC1550410,0x00000058,0x02C9C419,
				0x8FA8001A,0x10001E1B,0x0021201C,0x0180031D,0x0200031E,0x003F001F}};

*/
// With MTS - 92.16M axis clk 5.76M SYSREF with Ext 12.8M clock
/*
unsigned int LMK04208_CKin[1][26] = {
		{0x00160040,0x00144000,0x00144001,0x00140402,0xC0140023,
				0x40140024,0x80141E05,0x01100006,0x01100007,0x06010008,
				0x55555549,0x9102410A,0x0401100B,0x1B0C006C,0x2302886D,
				0x0200000E,0x8000800F,0xC1550410,0x00000058,0x02C9C419,
				0x8FA8001A,0x10001E1B,0x0021201C,0x0180031D,0x0200031E,0x003F001F}};
*/

// ====== With MTS - 184.32M axis clk 5.76M SYSREF with Ext 12.8M clock
/* Paste this in the application below
xil_printf("LMK04208 being configured...\r\n");
xil_printf("LMK04208 set to    Fosc: 122.88 MHz\n\r");
xil_printf("                AXI Clk: 184.32 MHz\n\r");
xil_printf("               SYSREF's:   5.76 MHz\n\r");
xil_printf("          Ref Clk (ext):  12.80 MHz\r\n");
*/
/*unsigned int LMK04208_CKin[1][26] = {
		{0x00160040,0x00144000,0x00144001,0x00140202,0xC0140023,
				0x40140024,0x80141E05,0x01100006,0x01100007,0x06010008,
				0x55555549,0x9102410A,0x0401100B,0x1B0C006C,0x2302806D,
				0x0200000E,0x8000800F,0xC1550410,0x00000058,0x02C9C419,
				0x8FA8001A,0x10001E1B,0x0021201C,0x0180031D,0x0200031E,0x003F001F}};
*/

// ======  With MTS - 184.32M axis clk 5.76M SYSREF with Int 12.8M clock
/* Paste this in the application below
xil_printf("LMK04208 being configured...\r\n");
xil_printf("LMK04208 set to    Fosc: 122.88 MHz\n\r");
xil_printf("                AXI Clk: 184.32 MHz\n\r");
xil_printf("               SYSREF's:   5.76 MHz\n\r");
xil_printf("          Ref Clk (int):  12.80 MHz\r\n");
*/
/*
unsigned int LMK04208_CKin[1][26] = {
		{0x00160040,0x00144000,0x00144001,0x00140202,0xC0140023,
				0x40140024,0x80141E05,0x01100006,0x01100007,0x06010008,
				0x55555549,0x9102410A,0x0401100B,0x1B0C006C,0x2302826D,
				0x0200000E,0x8000800F,0xC1550410,0x00000058,0x02C9C419,
				0x8FA8001A,0x10001E1B,0x0021201C,0x0180031D,0x0200031E,0x003F001F}};
*/
// With MTS - 491.52M axis clk 5.76M SYSREF with Ext 12.8M clock
/*
unsigned int LMK04208_CKin[1][26] = {
		{0x00160040,0x00144000,0x00144001,0x001400C2,0xC0140023,
	  	 0x40140024,0x80141E05,0x01100006,0x01100007,0x06010008,
		 0x55555549,0x9102410A,0x0401100B,0x1B0C006C,0x2302886D,
		 0x0200000E,0x8000800F,0xC1550410,0x00000058,0x02C9C419,
		 0x8FA8001A,0x10001E1B,0x0021201C,0x0180031D,0x0200031E,0x003F001F}};
*/


// ======  With MTS - 384.00M axis clk 4.00M SYSREF with Internal 12.8M clock
/* Paste this in the application below
xil_printf("LMK04208 being configured...\r\n");
xil_printf("LMK04208 set to    Fosc: 122.88 MHz\n\r");
xil_printf("                AXI Clk: 384.00 MHz\n\r");
xil_printf("               SYSREF's:   4.00 MHz\n\r");
xil_printf("          Ref Clk (int):  12.80 MHz\r\n");
*/

unsigned int LMK04208_CKin[1][26] = {
		{0x00160040,0x00146000,0x00146001,0x00140102,0xC0140023,
				0x40140024,0x80141E05,0x01100006,0x01100007,0x06010008,
				0x55555549,0x9102410A,0x0401100B,0x1B0C006C,0x2302886D,
				0x0200000E,0x8000800F,0xC1550410,0x00000058,0x02C9C419,
				0x8FA8001A,0x10001E1B,0x0021201C,0x0180033D,0x0200033E,0x003F001F}};

// ======  With MTS - 384.00M axis clk 4.00M SYSREF with External 12.8M clock
/* Paste this in the application below
xil_printf("LMK04208 being configured...\r\n");
xil_printf("LMK04208 set to    Fosc: 122.88 MHz\n\r");
xil_printf("                AXI Clk: 384.00 MHz\n\r");
xil_printf("               SYSREF's:   4.00 MHz\n\r");
xil_printf("          Ref Clk (ext):  12.80 MHz\r\n");
*/
/*
unsigned int LMK04208_CKin[1][26] = {
		{0x00160040,0x00146000,0x00146001,0x00140102,0xC0140023,
			0x40140024,0x80141E05,0x01100006,0x01100007,0x06010008,
			0x55555549,0x9102410A,0x0401100B,0x1B0C006C,0x2302826D,
			0x0200000E,0x8000800F,0xC1550410,0x00000058,0x02C9C419,
			0x8FA8001A,0x10001E1B,0x0021201C,0x0180033D,0x0200033E,0x003F001F}};
*/


/*****************************************************************************/
/**
*
* Main function
*
* TBD
*
* @param	None
*
* @return
*		- XST_SUCCESS if tests pass
*		- XST_FAILURE if fails.
*
* @note		None.
*
******************************************************************************/
int main(void)
{
	    u32  Val;
	    u32  Minor;
	    u32  Major;
	int Status;
	XRFdc_Config *ConfigPtr;
	cmdExitVal=0;

	// Initialize CLI commands structure
	cli_init();
	cli_cmd_func_mem_init();
	cli_cmd_func_dac_init();
	cli_DacAdcIntDec_init();
	cli_rfdcNyquistzone_init();
	cli_rfdc_poweron_status_init();
	cli_cmd_mts_init();
	cli_adcFreezeCalStatus_init();
	cli_adcSetFreezeCal_init();
	cli_adcSetUnFreezeCal_init();
	cli_adcGetCalCoefficients_init();
	cli_adcSaveCalCoeff_init();
	cli_adcLoadCalCoeff_init();
	cli_adcDisableCoeffOvrd_init();


	xil_printf("\n\r###############################################\n\r");
	xil_printf("Hello RFSoC World!\n\r\n");


	// Display IP version
	Val = Xil_In32(RFDC_BASE + 0x00000);
		Major = (Val >> 24) & 0xFF;
		Minor = (Val >> 16) & 0xFF;

		xil_printf("RFDC IP Version: %d.%d\r\n",Major,Minor);
		xil_printf("RFDC IP Major Version: %d\r\n",Major);
		xil_printf("RFDC IP Minor Version: %d\r\n",Minor);
		// IP Version //

	// Configure zcu111 clks
	    xil_printf("\nConfiguring the data converter clocks...\r\n");
 	    xil_printf("LMK04208 being configured...\r\n");
        xil_printf("LMK04208 set to    Fosc: 122.88 MHz\n\r");
        xil_printf("                AXI Clk: 384.00 MHz\n\r");
        xil_printf("               SYSREF's:   4.00 MHz\n\r");
        xil_printf("          Ref Clk (int):  12.80 MHz\r\n");
	    LMK04208ClockConfig(1, LMK04208_CKin);
		xil_printf("LMX2594's being configured...\r\n");
	//    LMX2594ClockConfig(1, 1474560);			//Set DAC/ADC clk to 1474M560
		  LMX2594ClockConfig(1, 3072000);			//Set DAC/ADC clk to 3072M000
	//	  LMX2594ClockConfig(1, 3932160);			//Set DAC/ADC clk to 3932M160
        /* LMX2594 clock options currently available, others can be added.
         204.80	MHz	-	 204800
         245.76	MHz	-	 245760
         409.60	MHz	-	 409600
         491.52	MHz	-	 491520
         737.28	MHz	-	 737280
        1474.56	MHz	-	1474560
        1966.08	MHz	-	1966080
        2048.00	MHz	-	2048000
        2457.60	MHz	-	2457600
        2949.12	MHz	-	2949120
        3072.00	MHz	-	3072000
        3276.80	MHz	-	3276800
        3686.40	MHz	-	3686400
        3932.16	MHz	-	3932160
        4000.00	MHz	-	4000000
        4096.00	MHz	-	4096000
        4423.68	MHz	-	4423680
        4669.44	MHz	-	4669440
        4915.20	MHz	-	4915200
        5120.00	MHz	-	5120000
        5734.40	MHz	-	5734400
        5898.24	MHz	-	5898240
        6144.00	MHz	-	6144000
        6389.76	MHz	-	6389760
        6400.00	MHz	-	6400000
        6553.60	MHz	-	6553600
        7340.03	MHz	-	7340032
        */
	/*    xil_printf("\r\nDAC Tile1 Power-on Sequence Step: 0x%08x\r\n",
	    		Xil_In32(XPAR_XRFDC_0_BASEADDR + 0x0800C));
	    xil_printf("DAC Tile1 Restart Power-On State Machine: %d\r\n",
	    		Xil_In32(RFDC_BASE + 0x08004));
	    xil_printf("\r\nADC Tile0 Power-on Sequence Step: 0x%08x\r\n",
	    		Xil_In32(RFDC_BASE + 0x1400C));
	    xil_printf("ADC Tile0 Restart Power-On State Machine: %d\r\n",
	    		Xil_In32(RFDC_BASE + 0x14004));
     */
	    xil_printf("\nThe design is ready to use.\r\n");
	    xil_printf("Open XSCT or the terminal to run commands.\r\n");
	    xil_printf("###############################################\n\r");


	xil_printf("\r\n--------------- Entering main() ---------------\n\r");




	/////////////////////////////////////////////////////////////////////////////////
	// Initialize RFdc
	//	.log_level		= METAL_LOG_DEBUG,
	//  .log_level		= METAL_LOG_INFO,

#ifdef ENABLE_METAL_PRINTS
    xil_printf("=== Metal log enabled ===\n\r");

	struct metal_init_params init_param = {	\
			.log_handler	= my_metal_default_log_handler,	\
			.log_level		= METAL_LOG_DEBUG,			\

	};
#else
	struct metal_init_params init_param = METAL_INIT_DEFAULTS;
#endif

	if (metal_init(&init_param)) {
		xil_printf("ERROR: Failed to run metal initialization\n");
		return XRFDC_FAILURE;
	}
	/* Initialize the RFdc driver. */
	ConfigPtr = XRFdc_LookupConfig(RFDC_DEVICE_ID);
	if (ConfigPtr == NULL) {
		xil_printf("Failed to init RFdc driver\r\n");
		return XST_FAILURE;
	}

	/* Initializes the controller */
	Status = XRFdc_CfgInitialize(&RFdcInst, ConfigPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Failed to init RFdc controller\r\n");
		return XST_FAILURE;
	}


	/////////////////////////////////////////////////////////////////////////////////
	// Run RFdc tests

//display ready status for ADCs and DACs
	rfdcReady(0);

	//display the Power On Status ADCs and DACs
	rfdcPoweronStatus(0);

	// Display current setting for DAC 0 in tile 0
	dacCurrent( 0 );


	/////////////////////////////////////////////////////////////////////////////////
	// Main Loop



    xil_printf("--------------------------------\r\n");
    xil_printf("Available commands:\r\n");
    xil_printf("--------------------------------\r\n");
	doHelp();


			// Run command line interpreter
		//	xil_printf("\n\r");
			xil_printf("Enter ? for help on commands\n\r");
			xil_printf("Enter 'exit' to end the application and shutdown the data converters.\n\r");


	while(!cmdExitVal) {
				xil_printf( "> ");
				Status = cmdParseAndRun();
				if (Status == XST_NO_DATA) {
					continue;
				}
				if (Status != XST_SUCCESS) {
					xil_printf("Invalid command or option. Enter ? for help. \n\r");
				}
			}
			rfdcShutdown(0);
			xil_printf("--- Application closed, have a good day! --- \r\n");

	//Exited cmd loop
	while(1);

	return XST_SUCCESS;
}


/*****************************************************************************/
/**
*
* My libmetal logger
*
******************************************************************************/

void my_metal_default_log_handler(enum metal_log_level level,
			       const char *format, ...)
{
	char msg[1024];
	char msgOut[1048];
	char *outPtr;
	int i;

	va_list args;
	static const char *level_strs[] = {
		"metal: emergency: ",
		"metal: alert:     ",
		"metal: critical:  ",
		"metal: error:     ",
		"metal: warning:   ",
		"metal: notice:    ",
		"metal: info:      ",
		"metal: debug:     ",
	};

	va_start(args, format);
	vsnprintf(msg, sizeof(msg), format, args);
	va_end(args);

	//replace single \n with \n\r
	outPtr = msgOut;
	for(i=0; i<1024; i++) {
		// if /n/r or /r/n combo
		if ((msg[i] == '\r' && msg[i+1] == '\n') ||
				(msg[i] == '\n' && msg[i+1] == '\r')) {
			*outPtr++ = msg[i++];
		} else if(msg[i] == '\n') {
			//if first char in string is \n, then remove
			if(i==0) {
				continue;
			} else {
				*outPtr++ = '\r';
			}
		}
		*outPtr++ = msg[i];
		if(msg[i] == 0) {
			break;
		}
	}
	//if line doesn't end with \n\r, then add it
	if( (msg[i-1] != '\n') && (msg[i-1] != '\r') ) {
		*(outPtr-1) = '\r';
		*outPtr++ = '\n';
		*outPtr++ = 0;
	}

	if (level <= METAL_LOG_EMERGENCY || level > METAL_LOG_DEBUG)
		level = METAL_LOG_EMERGENCY;

	xil_printf("%s%s", level_strs[level], msgOut);
}


