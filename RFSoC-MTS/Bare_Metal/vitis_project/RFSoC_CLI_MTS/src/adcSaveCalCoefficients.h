/*
 * adcSaveCalCoefficients.h
 *
 *  Created on: Aug 10, 2019
 *      Author: jlantz
 */

#ifndef ADCSAVECALCOEFF_H_
#define ADCSAVECALCOEFF_H_


/***************************** Include Files *********************************/
#include "xil_types.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/


void adcSaveCalCoeff(u32 *cmdVals);
void cli_adcSaveCalCoeff_init(void);


/************************** Variable Definitions *****************************/



extern  u32 calCoefficientsOCB2_Coeff0;
extern  u32 calCoefficientsOCB2_Coeff1;
extern  u32 calCoefficientsOCB2_Coeff2;
extern  u32 calCoefficientsOCB2_Coeff3;
extern  u32 calCoefficientsOCB2_Coeff4;
extern  u32 calCoefficientsOCB2_Coeff5;
extern  u32 calCoefficientsOCB2_Coeff6;
extern  u32 calCoefficientsOCB2_Coeff7;
extern  u32 calCoefficientsGCB_Coeff0;
extern  u32 calCoefficientsGCB_Coeff1;
extern  u32 calCoefficientsGCB_Coeff2;
extern  u32 calCoefficientsGCB_Coeff3;
extern  u32 calCoefficientsGCB_Coeff4;
extern  u32 calCoefficientsGCB_Coeff5;
extern  u32 calCoefficientsGCB_Coeff6;
extern  u32 calCoefficientsGCB_Coeff7;
extern  u32 calCoefficientsTSCB_Coeff0;
extern  u32 calCoefficientsTSCB_Coeff1;
extern  u32 calCoefficientsTSCB_Coeff2;
extern  u32 calCoefficientsTSCB_Coeff3;
extern  u32 calCoefficientsTSCB_Coeff4;
extern  u32 calCoefficientsTSCB_Coeff5;
extern  u32 calCoefficientsTSCB_Coeff6;
extern  u32 calCoefficientsTSCB_Coeff7;




#endif /* ADCSAVECALCOEFF_H_ */
