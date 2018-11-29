[#ftl]
/**
 ******************************************************************************
 * File Name          : ${name}
 * @author  CL
 * @version V1.0.0
 * @date    05-Mar-2018
 * @brief 
 ******************************************************************************
 [@common.optinclude name=mxTmpFolder + "/license.tmp"/][#--include License text --]
 ******************************************************************************
 */#n

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __BLUENRG_CONF_H
#define __BLUENRG_CONF_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
[#if includes??]
[#list includes as include]
#include "${include}"
[/#list]
[/#if]

[#assign useSENSORDEMO = false]
[#assign useSAMPLEAPP = false]
[#assign useBEACON = false]
[#assign useVIRTUALCOMPORT = false]
[#assign useCENTRALPROFILES = false]
[#assign usePERIPHERALPROFILES = false]

[#if RTEdatas??]
[#list RTEdatas as define]

[#if define?contains("SENSOR_DEMO")]
[#assign useSENSORDEMO = true]
[/#if]
[#if define?contains("SAMPLE_APP")]
[#assign useSAMPLEAPP = true]
[/#if]
[#if define?contains("BEACON")]
[#assign useBEACON = true]
[/#if]
[#if define?contains("VIRTUAL_COM_PORT")]
[#assign useVIRTUALCOMPORT = true]
[/#if]
[#if define?contains("PERIPHERAL_PROFILES")]
[#assign usePERIPHERALPROFILES = true]
[/#if]
[#if define?contains("CENTRAL_PROFILES")]
[#assign useCENTRALPROFILES = true]
[/#if]

[/#list]
[/#if]

#include "${FamilyName?lower_case}xx_hal.h"
#include <string.h>

[#compress]
[#list SWIPdatas as SWIP]  
[#if SWIP.defines??]
[#list SWIP.defines as definition]	
/*---------- [#if definition.comments??]${definition.comments} [/#if] -----------*/
#define ${definition.name} #t#t ${definition.value} 
[#if definition.description??]${definition.description} [/#if]
[/#list]
[/#if]
[/#list]
[/#compress]


#define HCI_DEFAULT_TIMEOUT_MS        1000

#define BLUENRG_memcpy                memcpy
#define BLUENRG_memset                memset
  
#if (DEBUG == 1)
#define PRINTF(...)                   printf(__VA_ARGS__)
#else
#define PRINTF(...)
#endif

#if PRINT_CSV_FORMAT
#include <stdio.h>
#define PRINT_CSV(...)                printf(__VA_ARGS__)
void print_csv_time(void);
#else
#define PRINT_CSV(...)
#endif

#ifdef __cplusplus
}
#endif
#endif /*__BLUENRG_CONF_H */

/**
 * @}
 */

/**
 * @}
 */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
