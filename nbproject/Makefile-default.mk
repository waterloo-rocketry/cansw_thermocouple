#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/cansw_thermocouple.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/cansw_thermocouple.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.c canlib/mcp2515/mcp_2515.c canlib/pic18f26k83/pic18f26k83_can.c canlib/pic18f26k83/pic18f26k83_timer.c canlib/tests/dspic33ep256gp502.X/main.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.c canlib/tests/mcp2515_picdev.X/main.c canlib/tests/mcp2515_picdev.X/spi.c canlib/tests/pic18f26k83_picdev.X/main.c canlib/tests/unit/target_pic18.X/pic18_main.c canlib/tests/unit/build_can_message.c canlib/tests/unit/can_buffering_layer.c canlib/tests/unit/can_common_tests.c canlib/tests/unit/unit_tests.c canlib/util/can_rcv_buffer.c canlib/util/can_tx_buffer.c canlib/util/safe_ring_buffer.c canlib/util/timing_util.c canlib/can_common.c mcc_generated_files/pin_manager.c mcc_generated_files/device_config.c mcc_generated_files/tmr0.c mcc_generated_files/ecan.c mcc_generated_files/spi1.c mcc_generated_files/mcc.c main.c thermocouple.c canlib/spi.c error_checks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1 ${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1 ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1 ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1 ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1 ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1 ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1 ${OBJECTDIR}/canlib/tests/unit/build_can_message.p1 ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1 ${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1 ${OBJECTDIR}/canlib/tests/unit/unit_tests.p1 ${OBJECTDIR}/canlib/util/can_rcv_buffer.p1 ${OBJECTDIR}/canlib/util/can_tx_buffer.p1 ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1 ${OBJECTDIR}/canlib/util/timing_util.p1 ${OBJECTDIR}/canlib/can_common.p1 ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/mcc_generated_files/device_config.p1 ${OBJECTDIR}/mcc_generated_files/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/ecan.p1 ${OBJECTDIR}/mcc_generated_files/spi1.p1 ${OBJECTDIR}/mcc_generated_files/mcc.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/thermocouple.p1 ${OBJECTDIR}/canlib/spi.p1 ${OBJECTDIR}/error_checks.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1.d ${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1.d ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1.d ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1.d ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1.d ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1.d ${OBJECTDIR}/canlib/tests/unit/build_can_message.p1.d ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1.d ${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1.d ${OBJECTDIR}/canlib/tests/unit/unit_tests.p1.d ${OBJECTDIR}/canlib/util/can_rcv_buffer.p1.d ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d ${OBJECTDIR}/canlib/util/timing_util.p1.d ${OBJECTDIR}/canlib/can_common.p1.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d ${OBJECTDIR}/mcc_generated_files/ecan.p1.d ${OBJECTDIR}/mcc_generated_files/spi1.p1.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/thermocouple.p1.d ${OBJECTDIR}/canlib/spi.p1.d ${OBJECTDIR}/error_checks.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1 ${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1 ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1 ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1 ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1 ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1 ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1 ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1 ${OBJECTDIR}/canlib/tests/unit/build_can_message.p1 ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1 ${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1 ${OBJECTDIR}/canlib/tests/unit/unit_tests.p1 ${OBJECTDIR}/canlib/util/can_rcv_buffer.p1 ${OBJECTDIR}/canlib/util/can_tx_buffer.p1 ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1 ${OBJECTDIR}/canlib/util/timing_util.p1 ${OBJECTDIR}/canlib/can_common.p1 ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/mcc_generated_files/device_config.p1 ${OBJECTDIR}/mcc_generated_files/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/ecan.p1 ${OBJECTDIR}/mcc_generated_files/spi1.p1 ${OBJECTDIR}/mcc_generated_files/mcc.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/thermocouple.p1 ${OBJECTDIR}/canlib/spi.p1 ${OBJECTDIR}/error_checks.p1

# Source Files
SOURCEFILES=canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.c canlib/mcp2515/mcp_2515.c canlib/pic18f26k83/pic18f26k83_can.c canlib/pic18f26k83/pic18f26k83_timer.c canlib/tests/dspic33ep256gp502.X/main.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.c canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.c canlib/tests/mcp2515_picdev.X/main.c canlib/tests/mcp2515_picdev.X/spi.c canlib/tests/pic18f26k83_picdev.X/main.c canlib/tests/unit/target_pic18.X/pic18_main.c canlib/tests/unit/build_can_message.c canlib/tests/unit/can_buffering_layer.c canlib/tests/unit/can_common_tests.c canlib/tests/unit/unit_tests.c canlib/util/can_rcv_buffer.c canlib/util/can_tx_buffer.c canlib/util/safe_ring_buffer.c canlib/util/timing_util.c canlib/can_common.c mcc_generated_files/pin_manager.c mcc_generated_files/device_config.c mcc_generated_files/tmr0.c mcc_generated_files/ecan.c mcc_generated_files/spi1.c mcc_generated_files/mcc.c main.c thermocouple.c canlib/spi.c error_checks.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/cansw_thermocouple.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18LF26K83
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1: canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/dspic33epxxxgp50x" 
	@${RM} ${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1.d 
	@${RM} ${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1 canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.c 
	@-${MV} ${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.d ${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1: canlib/mcp2515/mcp_2515.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/mcp2515" 
	@${RM} ${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1.d 
	@${RM} ${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1 canlib/mcp2515/mcp_2515.c 
	@-${MV} ${OBJECTDIR}/canlib/mcp2515/mcp_2515.d ${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1: canlib/pic18f26k83/pic18f26k83_can.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/pic18f26k83" 
	@${RM} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d 
	@${RM} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1 canlib/pic18f26k83/pic18f26k83_can.c 
	@-${MV} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.d ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1: canlib/pic18f26k83/pic18f26k83_timer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/pic18f26k83" 
	@${RM} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1 canlib/pic18f26k83/pic18f26k83_timer.c 
	@-${MV} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.d ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1: canlib/tests/dspic33ep256gp502.X/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X" 
	@${RM} ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1 canlib/tests/dspic33ep256gp502.X/main.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.d ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1: canlib/tests/mcp2515_picdev.X/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1 canlib/tests/mcp2515_picdev.X/main.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1: canlib/tests/mcp2515_picdev.X/spi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1 canlib/tests/mcp2515_picdev.X/spi.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1: canlib/tests/pic18f26k83_picdev.X/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X" 
	@${RM} ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1 canlib/tests/pic18f26k83_picdev.X/main.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.d ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1: canlib/tests/unit/target_pic18.X/pic18_main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/unit/target_pic18.X" 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1 canlib/tests/unit/target_pic18.X/pic18_main.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.d ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/unit/build_can_message.p1: canlib/tests/unit/build_can_message.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/unit" 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/build_can_message.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/build_can_message.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/unit/build_can_message.p1 canlib/tests/unit/build_can_message.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/unit/build_can_message.d ${OBJECTDIR}/canlib/tests/unit/build_can_message.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/unit/build_can_message.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1: canlib/tests/unit/can_buffering_layer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/unit" 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1 canlib/tests/unit/can_buffering_layer.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.d ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1: canlib/tests/unit/can_common_tests.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/unit" 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1 canlib/tests/unit/can_common_tests.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/unit/can_common_tests.d ${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/unit/unit_tests.p1: canlib/tests/unit/unit_tests.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/unit" 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/unit_tests.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/unit_tests.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/unit/unit_tests.p1 canlib/tests/unit/unit_tests.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/unit/unit_tests.d ${OBJECTDIR}/canlib/tests/unit/unit_tests.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/unit/unit_tests.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/can_rcv_buffer.p1: canlib/util/can_rcv_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/can_rcv_buffer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/can_rcv_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/can_rcv_buffer.p1 canlib/util/can_rcv_buffer.c 
	@-${MV} ${OBJECTDIR}/canlib/util/can_rcv_buffer.d ${OBJECTDIR}/canlib/util/can_rcv_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/can_rcv_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/can_tx_buffer.p1: canlib/util/can_tx_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/can_tx_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/can_tx_buffer.p1 canlib/util/can_tx_buffer.c 
	@-${MV} ${OBJECTDIR}/canlib/util/can_tx_buffer.d ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/safe_ring_buffer.p1: canlib/util/safe_ring_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1 canlib/util/safe_ring_buffer.c 
	@-${MV} ${OBJECTDIR}/canlib/util/safe_ring_buffer.d ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/timing_util.p1: canlib/util/timing_util.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/timing_util.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/timing_util.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/timing_util.p1 canlib/util/timing_util.c 
	@-${MV} ${OBJECTDIR}/canlib/util/timing_util.d ${OBJECTDIR}/canlib/util/timing_util.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/timing_util.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/can_common.p1: canlib/can_common.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib" 
	@${RM} ${OBJECTDIR}/canlib/can_common.p1.d 
	@${RM} ${OBJECTDIR}/canlib/can_common.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/can_common.p1 canlib/can_common.c 
	@-${MV} ${OBJECTDIR}/canlib/can_common.d ${OBJECTDIR}/canlib/can_common.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/can_common.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.p1: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pin_manager.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/device_config.p1: mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/device_config.p1 mcc_generated_files/device_config.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/device_config.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr0.p1: mcc_generated_files/tmr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/tmr0.p1 mcc_generated_files/tmr0.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr0.d ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/ecan.p1: mcc_generated_files/ecan.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ecan.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ecan.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/ecan.p1 mcc_generated_files/ecan.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/ecan.d ${OBJECTDIR}/mcc_generated_files/ecan.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/ecan.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/spi1.p1: mcc_generated_files/spi1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/spi1.p1 mcc_generated_files/spi1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/spi1.d ${OBJECTDIR}/mcc_generated_files/spi1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/spi1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mcc.p1: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/mcc.p1 mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mcc.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/thermocouple.p1: thermocouple.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/thermocouple.p1.d 
	@${RM} ${OBJECTDIR}/thermocouple.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/thermocouple.p1 thermocouple.c 
	@-${MV} ${OBJECTDIR}/thermocouple.d ${OBJECTDIR}/thermocouple.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/thermocouple.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/spi.p1: canlib/spi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib" 
	@${RM} ${OBJECTDIR}/canlib/spi.p1.d 
	@${RM} ${OBJECTDIR}/canlib/spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/spi.p1 canlib/spi.c 
	@-${MV} ${OBJECTDIR}/canlib/spi.d ${OBJECTDIR}/canlib/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/error_checks.p1: error_checks.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/error_checks.p1.d 
	@${RM} ${OBJECTDIR}/error_checks.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/error_checks.p1 error_checks.c 
	@-${MV} ${OBJECTDIR}/error_checks.d ${OBJECTDIR}/error_checks.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/error_checks.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1: canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/dspic33epxxxgp50x" 
	@${RM} ${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1.d 
	@${RM} ${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1 canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.c 
	@-${MV} ${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.d ${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/dspic33epxxxgp50x/dspic33epxxxgp50x_can.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1: canlib/mcp2515/mcp_2515.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/mcp2515" 
	@${RM} ${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1.d 
	@${RM} ${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1 canlib/mcp2515/mcp_2515.c 
	@-${MV} ${OBJECTDIR}/canlib/mcp2515/mcp_2515.d ${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/mcp2515/mcp_2515.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1: canlib/pic18f26k83/pic18f26k83_can.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/pic18f26k83" 
	@${RM} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d 
	@${RM} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1 canlib/pic18f26k83/pic18f26k83_can.c 
	@-${MV} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.d ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1: canlib/pic18f26k83/pic18f26k83_timer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/pic18f26k83" 
	@${RM} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1 canlib/pic18f26k83/pic18f26k83_timer.c 
	@-${MV} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.d ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1: canlib/tests/dspic33ep256gp502.X/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X" 
	@${RM} ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1 canlib/tests/dspic33ep256gp502.X/main.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.d ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/dspic33ep256gp502.X/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_cdc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/usb/usb_device_events.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1: canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1 canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1: canlib/tests/mcp2515_picdev.X/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1 canlib/tests/mcp2515_picdev.X/main.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1: canlib/tests/mcp2515_picdev.X/spi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/mcp2515_picdev.X" 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1 canlib/tests/mcp2515_picdev.X/spi.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.d ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/mcp2515_picdev.X/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1: canlib/tests/pic18f26k83_picdev.X/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X" 
	@${RM} ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1 canlib/tests/pic18f26k83_picdev.X/main.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.d ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/pic18f26k83_picdev.X/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1: canlib/tests/unit/target_pic18.X/pic18_main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/unit/target_pic18.X" 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1 canlib/tests/unit/target_pic18.X/pic18_main.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.d ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/unit/target_pic18.X/pic18_main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/unit/build_can_message.p1: canlib/tests/unit/build_can_message.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/unit" 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/build_can_message.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/build_can_message.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/unit/build_can_message.p1 canlib/tests/unit/build_can_message.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/unit/build_can_message.d ${OBJECTDIR}/canlib/tests/unit/build_can_message.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/unit/build_can_message.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1: canlib/tests/unit/can_buffering_layer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/unit" 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1 canlib/tests/unit/can_buffering_layer.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.d ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/unit/can_buffering_layer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1: canlib/tests/unit/can_common_tests.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/unit" 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1 canlib/tests/unit/can_common_tests.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/unit/can_common_tests.d ${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/unit/can_common_tests.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/tests/unit/unit_tests.p1: canlib/tests/unit/unit_tests.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/tests/unit" 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/unit_tests.p1.d 
	@${RM} ${OBJECTDIR}/canlib/tests/unit/unit_tests.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/tests/unit/unit_tests.p1 canlib/tests/unit/unit_tests.c 
	@-${MV} ${OBJECTDIR}/canlib/tests/unit/unit_tests.d ${OBJECTDIR}/canlib/tests/unit/unit_tests.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/tests/unit/unit_tests.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/can_rcv_buffer.p1: canlib/util/can_rcv_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/can_rcv_buffer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/can_rcv_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/can_rcv_buffer.p1 canlib/util/can_rcv_buffer.c 
	@-${MV} ${OBJECTDIR}/canlib/util/can_rcv_buffer.d ${OBJECTDIR}/canlib/util/can_rcv_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/can_rcv_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/can_tx_buffer.p1: canlib/util/can_tx_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/can_tx_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/can_tx_buffer.p1 canlib/util/can_tx_buffer.c 
	@-${MV} ${OBJECTDIR}/canlib/util/can_tx_buffer.d ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/safe_ring_buffer.p1: canlib/util/safe_ring_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1 canlib/util/safe_ring_buffer.c 
	@-${MV} ${OBJECTDIR}/canlib/util/safe_ring_buffer.d ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/timing_util.p1: canlib/util/timing_util.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/timing_util.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/timing_util.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/timing_util.p1 canlib/util/timing_util.c 
	@-${MV} ${OBJECTDIR}/canlib/util/timing_util.d ${OBJECTDIR}/canlib/util/timing_util.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/timing_util.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/can_common.p1: canlib/can_common.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib" 
	@${RM} ${OBJECTDIR}/canlib/can_common.p1.d 
	@${RM} ${OBJECTDIR}/canlib/can_common.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/can_common.p1 canlib/can_common.c 
	@-${MV} ${OBJECTDIR}/canlib/can_common.d ${OBJECTDIR}/canlib/can_common.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/can_common.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.p1: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pin_manager.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/device_config.p1: mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/device_config.p1 mcc_generated_files/device_config.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/device_config.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr0.p1: mcc_generated_files/tmr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/tmr0.p1 mcc_generated_files/tmr0.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr0.d ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/ecan.p1: mcc_generated_files/ecan.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ecan.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ecan.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/ecan.p1 mcc_generated_files/ecan.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/ecan.d ${OBJECTDIR}/mcc_generated_files/ecan.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/ecan.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/spi1.p1: mcc_generated_files/spi1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/spi1.p1 mcc_generated_files/spi1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/spi1.d ${OBJECTDIR}/mcc_generated_files/spi1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/spi1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mcc.p1: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/mcc.p1 mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mcc.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/thermocouple.p1: thermocouple.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/thermocouple.p1.d 
	@${RM} ${OBJECTDIR}/thermocouple.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/thermocouple.p1 thermocouple.c 
	@-${MV} ${OBJECTDIR}/thermocouple.d ${OBJECTDIR}/thermocouple.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/thermocouple.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/spi.p1: canlib/spi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib" 
	@${RM} ${OBJECTDIR}/canlib/spi.p1.d 
	@${RM} ${OBJECTDIR}/canlib/spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/spi.p1 canlib/spi.c 
	@-${MV} ${OBJECTDIR}/canlib/spi.d ${OBJECTDIR}/canlib/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/error_checks.p1: error_checks.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/error_checks.p1.d 
	@${RM} ${OBJECTDIR}/error_checks.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/error_checks.p1 error_checks.c 
	@-${MV} ${OBJECTDIR}/error_checks.d ${OBJECTDIR}/error_checks.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/error_checks.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/cansw_thermocouple.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/cansw_thermocouple.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/cansw_thermocouple.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/cansw_thermocouple.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/cansw_thermocouple.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/cansw_thermocouple.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/cansw_thermocouple.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
