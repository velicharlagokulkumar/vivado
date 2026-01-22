
#ifndef SRC_CMD_FUNC_DAC_H_   /* prevent circular inclusions */
#define SRC_CMD_FUNC_DAC_H_   /* by using protection macros */


/***************************** Include Files *********************************/
#include "xil_types.h"
#include "xrfdc.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

void cli_cmd_func_dac_init(void);

void dacDumpStatus(u32 *cmdVals);
void dacDumpRegs (u32 *cmdVals);
void adcDumpStatus(u32 *cmdVals);
void rfSetMixerFreqOptPrint(u32 type, u32 Tile_Id, u32 Block_Id, double newFreq, int printEnable);
void dacReset(u32 *cmdVals);
void adcReset(u32 *cmdVals);
void dacCurrent(u32 *cmdVals);

//void dacAdcSyncStart(u32 *cmdVals);
//void dacMTS(u32 *cmdVals);
//void dacMTSwl(u32 *cmdVals);
//void adcMTSwl(u32 *cmdVals);
//void adcMTS(u32 *cmdVals);
//void adcFreezeCalibration(u32 *cmdVals);
//void adcGetDecimation(u32 *cmdVals);
//void dacGetInterpolation(u32 *cmdVals);
//void dacAdcMTSStatus(u32 *cmdVals);
void rfdcReady (u32 *cmdVals);
void rfdcShutdown (u32 *cmdVals);
void rfdcStartup (u32 *cmdVals);
void adcDumpRegs (u32 *cmdVals);
void RFdcCheckAxisWidth(XRFdc *RFdcInstPtr, u32 DacExpectedBits, u32 AdcExpectedBits);


/************************** Variable Definitions *****************************/

/************************** Function Definitions ******************************/


#endif /* SRC_CMD_FUNC_DAC_H_ */


