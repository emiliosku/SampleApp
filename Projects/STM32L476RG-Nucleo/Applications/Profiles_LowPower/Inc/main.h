/**
  ******************************************************************************
  * @file    main.h
  * @author  MCD Application Team
  * @version V1.0
  * @date    14-April-2014
  * @brief   Header for main.c module
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software
  * distributed under the License is distributed on an "AS IS" BASIS,
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */


/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stdint.h"
#include "cube_hal.h"

/** @addtogroup Applications
 *  @{
 */

/** @addtogroup Profiles_LowPower
 *  @{
 */

/** @addtogroup MAIN
 *  @{
 */
 
/* Exported constants --------------------------------------------------------*/

/** @defgroup MAIN_Exported_Types
 *  @{
 */
/* Exported types ------------------------------------------------------------*/

/**
 * @}
 */

/** @defgroup MAIN_Exported_Defines
 *  @{
 */
/* Exported defines -----------------------------------------------------------*/
#define HCLK_32MHZ 0 /* can be set to 1 only for STM32L053xx */
#define HCLK_80MHZ 0 /* can be set to 1 only for STM32L476RG */ /* SO: TO BE VERIFIED FOR L4. Do not use by now. */
#define HCLK_84MHZ 0 /* can be set to 1 only for STM32F401xE */

/* USER CODE BEGIN Private defines */
/**
 * RTC cloc divider
 */
#define WUCKSEL_DIVIDER (3)		/**< Tick is (LSI speed clock/2) */
#define RTC_ASYNCH_PRESCALER (1)
#define RTC_SYNCH_PRESCALER (0xFFFF)
/* USER CODE END Private defines */
/**
 * @}
 */

/** @defgroup MAIN_Exported_Functions
 *  @{
 */
/* Exported functions ------------------------------------------------------- */

/**
 * @}
 */

/**
 * @}
 */

/**
 * @}
 */

/**
 * @}
 */

 #ifdef __cplusplus
}
#endif

#endif /*__MAIN_H */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
