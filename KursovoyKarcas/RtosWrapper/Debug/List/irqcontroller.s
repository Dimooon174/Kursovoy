///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.40.2.214/W32 for ARM        27/May/2021  17:34:20
// Copyright 1999-2019 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =
//        C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\AHardware\IrqController\irqcontroller.cpp
//    Command line =
//        -f C:\Users\super\AppData\Local\Temp\EWAE6F.tmp ("C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\AHardware\IrqController\irqcontroller.cpp"
//        -lC "C:\IAR Proj\NEW6\KursovoyKarcas\RtosWrapper\Debug\List" -lA
//        "C:\IAR Proj\NEW6\KursovoyKarcas\RtosWrapper\Debug\List" -o "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Debug\Obj" --no_cse --no_unroll
//        --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M4 -e
//        --fpu=VFPv4_sp --dlib_config
//        D:\Games\IAR\arm\inc\c\DLib_Config_Normal.h -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Rtos\" -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Rtos\wrapper\" -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Rtos\wrapper\FreeRtos\" -I
//        "C:\IAR Proj\NEW6\KursovoyKarcas\RtosWrapper\Rtos\FreeRtos\" -I
//        "C:\IAR Proj\NEW6\KursovoyKarcas\RtosWrapper\Rtos\FreeRtos\include\"
//        -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Rtos\FreeRtos\portable\" -I
//        "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Rtos\FreeRtos\portable\Common\"
//        -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Rtos\FreeRtos\portable\IAR\" -I
//        "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Rtos\FreeRtos\portable\IAR\ARM_CM4F\"
//        -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Rtos\FreeRtos\portable\MemMang\"
//        -I "C:\IAR Proj\NEW6\KursovoyKarcas\RtosWrapper\MyTasks\" -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Common\" -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\CMSIS\" -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Application\" -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Application\Diagnostic\" -I
//        "C:\IAR Proj\NEW6\KursovoyKarcas\RtosWrapper\AHardware\" -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\AHardware\GpioPort\" -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\AHardware\IrqController\" -I
//        "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\..\CortexLib\AbstractHardware\Pin\"
//        -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\..\CortexLib\AbstractHardware\Registers\STM32F411\FieldValues\"
//        -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\..\CortexLib\AbstractHardware\Registers\STM32F411\"
//        -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\..\CortexLib\AbstractHardware\Registers\"
//        -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\..\CortexLib\AbstractHardware\Port\"
//        -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\..\CortexLib\AbstractHardware\Atomic\"
//        -I "C:\IAR Proj\NEW6\KursovoyKarcas\RtosWrapper\..\CortexLib\Common\"
//        -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\..\CortexLib\Common\Singleton\"
//        -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\..\CortexLib\Common\RomObject\"
//        -I "C:\IAR Proj\NEW6\KursovoyKarcas\RtosWrapper\USART\" -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Common\" -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\AHardware\Registers\" -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\AHardware\Registers\STM32F411\FieldValues\"
//        -I "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\AHardware\Registers\STM32F411\"
//        -I "C:\IAR Proj\NEW6\KursovoyKarcas\RtosWrapper\AHardware\SPI\" -I
//        "C:\IAR Proj\NEW6\KursovoyKarcas\RtosWrapper\AHardware\BME280Driver\"
//        -Ol --c++ --no_exceptions --no_rtti)
//    Locale       =  C
//    List file    =
//        C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Debug\List\irqcontroller.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "0"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC _ZN13IrqController13HandleIrqTim2Ev
        PUBLIC _ZN13IrqController22HandleIrqExtiLine15_10Ev
        PUBLIC _ZN14FieldValueBaseI18TIM2_SR_UIF_ValuesIN4TIM22SRELj0ELj1E13ReadWriteModeNS1_10TIM2SRBaseEES4_Lj0EE3SetIS3_vEEvv
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI Resource D0:64, D1:64, D2:64, D3:64, D4:64, D5:64, D6:64, D7:64
          CFI Resource D8:64, D9:64, D10:64, D11:64, D12:64, D13:64, D14:64
          CFI Resource D15:64
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI D0 Undefined
          CFI D1 Undefined
          CFI D2 Undefined
          CFI D3 Undefined
          CFI D4 Undefined
          CFI D5 Undefined
          CFI D6 Undefined
          CFI D7 Undefined
          CFI D8 SameValue
          CFI D9 SameValue
          CFI D10 SameValue
          CFI D11 SameValue
          CFI D12 SameValue
          CFI D13 SameValue
          CFI D14 SameValue
          CFI D15 SameValue
          CFI EndCommon cfiCommon0
        
// C:\IAR Proj\NEW6\KursovoyKarcas\RtosWrapper\AHardware\IrqController\irqcontroller.cpp
//    1 //
//    2 // Created by Sergey on 27.08.2018.
//    3 //
//    4 #include "irqcontroller.hpp"
//    5 #include "tim2registers.hpp"

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN14FieldValueBaseI18TIM2_SR_UIF_ValuesIN4TIM22SRELj0ELj1E13ReadWriteModeNS1_10TIM2SRBaseEES4_Lj0EE3SetIS3_vEEvv
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN14FieldValueBaseI18TIM2_SR_UIF_ValuesIN4TIM22SRELj0ELj1E13ReadWriteModeNS1_10TIM2SRBaseEES4_Lj0EE3SetIS3_vEEvv
          CFI NoCalls
        THUMB
// __interwork __vfp void FieldValueBase<TIM2_SR_UIF_Values<TIM2::SR, 0U, 1U, ReadWriteMode, TIM2::TIM2SRBase>, TIM2::TIM2SRBase, 0U>::Set<ReadWriteMode, void>()
_ZN14FieldValueBaseI18TIM2_SR_UIF_ValuesIN4TIM22SRELj0ELj1E13ReadWriteModeNS1_10TIM2SRBaseEES4_Lj0EE3SetIS3_vEEvv:
        LDR.N    R1,??Set_0       ;; 0x40000010
        LDR      R0,[R1, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        STR      R0,[R1, #+0]
        BX       LR               ;; return
        DATA
??Set_0:
        DATA32
        DC32     0x40000010
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN13IrqController22HandleIrqExtiLine15_10Ev
          CFI NoCalls
        THUMB
//    6 void IrqController::HandleIrqExtiLine15_10()
//    7 {
//    8   
//    9 }
_ZN13IrqController22HandleIrqExtiLine15_10Ev:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   10 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN13IrqController13HandleIrqTim2Ev
        THUMB
//   11 void IrqController::HandleIrqTim2()
//   12 {
_ZN13IrqController13HandleIrqTim2Ev:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   13     TIM2::SR::UIF::NoUpdate::Set();
          CFI FunCall _ZN14FieldValueBaseI18TIM2_SR_UIF_ValuesIN4TIM22SRELj0ELj1E13ReadWriteModeNS1_10TIM2SRBaseEES4_Lj0EE3SetIS3_vEEvv
        BL       _ZN14FieldValueBaseI18TIM2_SR_UIF_ValuesIN4TIM22SRELj0ELj1E13ReadWriteModeNS1_10TIM2SRBaseEES4_Lj0EE3SetIS3_vEEvv
//   14 
//   15 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock2

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 26 bytes in section .text
// 
// 10 bytes of CODE memory (+ 16 bytes shared)
//
//Errors: none
//Warnings: none
