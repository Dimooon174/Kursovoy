///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.40.2.214/W32 for ARM        27/May/2021  17:34:21
// Copyright 1999-2019 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =
//        C:\IAR Proj\NEW6\KursovoyKarcas\RtosWrapper\startupF411RE.cpp
//    Command line =
//        -f C:\Users\super\AppData\Local\Temp\EWB181.tmp ("C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\startupF411RE.cpp" -lC "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Debug\List" -lA "C:\IAR
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Debug\List" -o "C:\IAR
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
//        Proj\NEW6\KursovoyKarcas\RtosWrapper\Debug\List\startupF411RE.s
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
        #define SHT_INIT_ARRAY 0xe

        SECTION CSTACK:DATA:NOALLOC:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        EXTERN _ZN13IrqController13HandleIrqTim2Ev
        EXTERN _ZN13IrqController22HandleIrqExtiLine15_10Ev
        EXTERN _ZTVN10__cxxabiv117__class_type_infoE
        EXTERN __cmain
        EXTWEAK __iar_init_core
        EXTWEAK __iar_init_vfp
        EXTERN vPortSVCHandler
        EXTERN xPortPendSVHandler
        EXTERN xPortSysTickHandler

        PUBLIC _ZGV11usartDriver
        PUBLIC _ZN11DummyModule7handlerEv
        PUBLIC _ZN11UsartDriverI6Usart2E18OnNextByteTransmitEv
        PUBLIC _ZN11UsartDriverI6Usart2EC1Ev
        PUBLIC _ZN12RegisterBaseILj1073759236ELj32E13ReadWriteModeE5WriteIS0_vEEvj
        PUBLIC _ZN14FieldValueBaseI20USART2_CR1_RE_ValuesIN6USART23CR1ELj2ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj0EE3SetIS3_vEEvv
        PUBLIC _ZN14FieldValueBaseI20USART2_SR_TXE_ValuesIN6USART22SRELj7ELj1E8ReadModeNS1_12USART2SRBaseEES4_Lj1EE5IsSetIS3_vEEbv
        PUBLIC _ZN14FieldValueBaseI23USART2_CR1_TXEIE_ValuesIN6USART23CR1ELj7ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj0EE3SetIS3_vEEvv
        PUBLIC _ZN14FieldValueBaseI23USART2_CR1_TXEIE_ValuesIN6USART23CR1ELj7ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj1EE5IsSetIS3_vEEbv
        PUBLIC _ZN4UART16interruptHandlerEv
        PUBLIC _ZN5USARTI6USART2L_Z11usartDriverEE15TransmitDisableEv
        PUBLIC _ZN5USARTI6USART2L_Z11usartDriverEE16InterruptDisableEv
        PUBLIC _ZN5USARTI6USART2L_Z11usartDriverEE16InterruptHandlerEv
        PUBLIC _ZN5USARTI6USART2L_Z11usartDriverEE9WriteByteEh
        PUBLIC _ZN9OsWrapper11RtosWrapper19wHandleSvcInterruptEv
        PUBLIC _ZN9OsWrapper11RtosWrapper23wHandleSysTickInterruptEv
        PUBLIC _ZN9OsWrapper4Rtos18HandleSvcInterruptEv
        PUBLIC _ZN9OsWrapper4Rtos22HandleSysTickInterruptEv
        PUBLIC _ZNSt5arrayIhLj255EEixEj
        PUBLIC _ZNSt6chrono12steady_clock9is_steadyE
        PUBLIC _ZNSt6chrono12system_clock12is_monotonicE
        PUBLIC _ZNSt6chrono12system_clock9is_steadyE
        PUBLIC _ZTISt10ctype_base
        PUBLIC _ZTSSt10ctype_base
        PUBLIC __iar_program_start
        PUBLIC __vector_table
        PUBLIC usartDriver
        
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
        

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTISt10ctype_base
        DATA
// __absolute __class_type_info const <Typeinfo for std::ctype_base>
_ZTISt10ctype_base:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8, _ZTSSt10ctype_base

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTSSt10ctype_base
        DATA
// __absolute char const <Typeinfo name for std::ctype_base>[15]
_ZTSSt10ctype_base:
        DATA8
        DC8 "St10ctype_base"
        DC8 0
// C:\IAR Proj\NEW6\KursovoyKarcas\RtosWrapper\startupF411RE.cpp
//    1 /******************************************************************************
//    2  *  FILENAME: startupF411RE.cpp
//    3  *  
//    4  * DESCRIPTION: Файл с векторами прерывания для Cortex-M. для С++.
//    5  * Поскольку почему-то в Cortex-M все обработчики должны по имени точно 
//    6  *  совпадать с имена в таблице векторов, а название метода из С++ класса 
//    7  * совпасть с такой таблицей со стандратными стартап файлами никак не может
//    8  * то вот приходиться такой же писать на С++. 
//    9  * Внимание!!!!!! Имена классов точно должны совпадать с именами у вас в проекте
//   10  * Можно изменить и сократить количество классов, если есть желание, например
//   11  *
//   12  * Copyright (c) 2018 by South Ural State University
//   13  * Author: Сергей Колодий
//   14  ******************************************************************************/
//   15 
//   16 #pragma language = extended
//   17 #pragma segment = "CSTACK"
//   18 #include "AHardware/IrqController/irqcontroller.hpp"
//   19 #include "Rtos/wrapper/rtos.hpp"

        SECTION `.rodata`:CONST:REORDER:NOROOT(0)
        SECTION_GROUP _ZNSt6chrono12system_clock9is_steadyE
        DATA
// __absolute bool const std::chrono::system_clock::is_steady
_ZNSt6chrono12system_clock9is_steadyE:
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(0)
        SECTION_GROUP _ZNSt6chrono12system_clock12is_monotonicE
        DATA
// __absolute bool const std::chrono::system_clock::is_monotonic
_ZNSt6chrono12system_clock12is_monotonicE:
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(0)
        SECTION_GROUP _ZNSt6chrono12steady_clock9is_steadyE
        DATA
// __absolute bool const std::chrono::steady_clock::is_steady
_ZNSt6chrono12steady_clock9is_steadyE:
        DATA8
        DC8 1
//   20 #include "UsartConfig.hpp"

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function __sti__routine
        THUMB
// static __intrinsic __interwork __vfp void __sti__routine()
__sti__routine:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        LDR.N    R1,??DataTable0
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??__sti__routine_0
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable0_1
          CFI FunCall _ZN11UsartDriverI6Usart2EC1Ev
        BL       _ZN11UsartDriverI6Usart2EC1Ev
??__sti__routine_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DATA32
        DC32     _ZGV11usartDriver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DATA32
        DC32     usartDriver

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_GROUP _ZGV11usartDriver
        DATA
// __absolute unsigned char <_ZGV11usartDriver>
_ZGV11usartDriver:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP usartDriver
        DATA
// __absolute UsartDriver<Usart2> usartDriver
usartDriver:
        DS8 260
//   21 extern "C" void __iar_program_start( void );
//   22 extern "C" void xPortPendSVHandler(void);
//   23 
//   24 class UART
//   25 {
//   26 public:
//   27   static void interruptHandler()
//   28   {
//   29     Usart2::InterruptHandler();
//   30   }
//   31 };
//   32 class DummyModule
//   33 {
//   34   public:
//   35     static void handler();
//   36 };
//   37 
//   38 using tIntFunct = void(*)();
//   39 //cstat !MISRAC++2008-9-5-1
//   40 using tIntVectItem = union {tIntFunct __fun; void * __ptr;};
//   41 
//   42 // The vector table is normally located at address 0.
//   43 // When debugging in RAM, it can be located in RAM, aligned to at least 2^6.
//   44 // If you need to define interrupt service routines,
//   45 // make a copy of this file and include it in your project.
//   46 // The name "__vector_table" has special meaning for C-SPY:
//   47 // it is where the SP start value is found, and the NVIC vector
//   48 // table register (VTOR) is initialized to this address if != 0.
//   49 
//   50 #pragma location = ".intvec"
//   51 //cstat !MISRAC++2008-0-1-4_b !MISRAC++2008-9-5-1

        SECTION `.intvec`:CONST:REORDER:NOROOT(2)
        DATA
//   52 extern "C" const tIntVectItem __vector_table[] =
__vector_table:
        DATA32
        DC32 SFE(CSTACK), __iar_program_start, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv, 0x0, 0x0
        DC32 0x0, 0x0, _ZN9OsWrapper4Rtos18HandleSvcInterruptEv
        DC32 _ZN11DummyModule7handlerEv, 0x0, xPortPendSVHandler
        DC32 _ZN9OsWrapper4Rtos22HandleSysTickInterruptEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, 0x0, 0x0, 0x0, 0x0
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN13IrqController13HandleIrqTim2Ev
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN4UART16interruptHandlerEv, 0x0
        DC32 _ZN13IrqController22HandleIrqExtiLine15_10Ev
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv, 0x0, 0x0
        DC32 0x0, 0x0, _ZN11DummyModule7handlerEv, 0x0
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, 0x0, 0x0, 0x0, 0x0
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
        DC32 _ZN11DummyModule7handlerEv, 0x0, 0x0, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv
//   53 {
//   54   { .__ptr = __sfe( "CSTACK" ) },
//   55   __iar_program_start,
//   56 
//   57   DummyModule::handler,
//   58   DummyModule::handler,
//   59   DummyModule::handler,
//   60   DummyModule::handler,
//   61   DummyModule::handler,
//   62   0,
//   63   0,
//   64   0,
//   65   0,
//   66   OsWrapper::Rtos::HandleSvcInterrupt,
//   67   DummyModule::handler,
//   68   0,
//   69   xPortPendSVHandler,
//   70   OsWrapper::Rtos::HandleSysTickInterrupt,
//   71   //External Interrupts
//   72   DummyModule::handler,         //Window Watchdog
//   73   DummyModule::handler,         //PVD through EXTI Line detect/EXTI16
//   74   DummyModule::handler,         //Tamper and Time Stamp/EXTI21 
//   75   DummyModule::handler,         //RTC Wakeup/EXTI22 
//   76   DummyModule::handler,         //FLASH
//   77   DummyModule::handler,         //RCC
//   78   DummyModule::handler,         //EXTI Line 0
//   79   DummyModule::handler,         //EXTI Line 1
//   80   DummyModule::handler,         //EXTI Line 2
//   81   DummyModule::handler,         //EXTI Line 3
//   82   DummyModule::handler,         //EXTI Line 4
//   83   DummyModule::handler,         //DMA1 Stream 0
//   84   DummyModule::handler,         //DMA1 Stream 1
//   85   DummyModule::handler,         //DMA1 Stream 2
//   86   DummyModule::handler,         //DMA1 Stream 3
//   87   DummyModule::handler,         //DMA1 Stream 4
//   88   DummyModule::handler,         //DMA1 Stream 5
//   89   DummyModule::handler,         //DMA1 Stream 6
//   90   DummyModule::handler,         //ADC1
//   91   0,                            //USB High Priority
//   92   0,                            //USB Low  Priority
//   93   0,                            //DAC
//   94   0,                            //COMP through EXTI Line
//   95   DummyModule::handler,         //EXTI Line 9..5
//   96   DummyModule::handler,         //TIM9/TIM1 Break interrupt 
//   97   DummyModule::handler,         //TIM10/TIM1 Update interrupt
//   98   DummyModule::handler,         //TIM11/TIM1 Trigger/Commutation interrupts
//   99   DummyModule::handler,		//TIM1 Capture Compare interrupt
//  100   IrqController::HandleIrqTim2,         //TIM2  	
//  101   DummyModule::handler,         //TIM3
//  102   DummyModule::handler,         //TIM4
//  103   DummyModule::handler,         //I2C1 Event
//  104   DummyModule::handler,         //I2C1 Error
//  105   DummyModule::handler,         //I2C2 Event
//  106   DummyModule::handler,         //I2C2 Error
//  107   DummyModule::handler,         //SPI1
//  108   DummyModule::handler,         //SPI2
//  109   DummyModule::handler,         //USART1
//  110   UART::interruptHandler,         //USART2
//  111   0,
//  112   IrqController::HandleIrqExtiLine15_10,         //EXTI Line 15..10
//  113   DummyModule::handler,         //EXTI Line 17 interrupt / RTC Alarms (A and B) through EXTI line interrupt
//  114   DummyModule::handler,         //EXTI Line 18 interrupt / USB On-The-Go  FS Wakeup through EXTI line interrupt
//  115   0,				//TIM6
//  116   0,				//TIM7  f0
//  117   0,
//  118   0,
//  119   DummyModule::handler,         //DMA1 Stream 7 global interrupt fc
//  120   0,
//  121   DummyModule::handler,	        //SDIO global interrupt
//  122   DummyModule::handler,	        //TIM5 global interrupt
//  123   DummyModule::handler,	        //SPI3 global interrupt
//  124   0,			        // 110
//  125   0,
//  126   0,
//  127   0,
//  128   DummyModule::handler,		//DMA2 Stream0 global interrupt 120
//  129   DummyModule::handler,		//DMA2 Stream1 global interrupt
//  130   DummyModule::handler,		//DMA2 Stream2 global interrupt
//  131   DummyModule::handler,		//DMA2 Stream3 global interrupt
//  132   DummyModule::handler,		//DMA2 Stream4 global interrupt 130
//  133   0,
//  134   0,
//  135   0,
//  136   0,
//  137   0,
//  138   0,
//  139   DummyModule::handler,		//USB On The Go FS global interrupt, 14C
//  140   DummyModule::handler,		//DMA2 Stream5 global interrupt
//  141   DummyModule::handler,		//DMA2 Stream6 global interrupt
//  142   DummyModule::handler,		//DMA2 Stream7 global interrupt
//  143   DummyModule::handler,				//USART6 15C
//  144   DummyModule::handler,         //I2C3 Event
//  145   DummyModule::handler,         //I2C3 Error 164
//  146   0,
//  147   0,
//  148   0,
//  149   0,
//  150   0,
//  151   0,
//  152   0,
//  153   DummyModule::handler,		//FPU 184
//  154   0,
//  155   0,
//  156   DummyModule::handler,		//SPI 4 global interrupt
//  157   DummyModule::handler		//SPI 5 global interrupt
//  158 };
//  159 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN11DummyModule7handlerEv
          CFI NoCalls
        THUMB
//  160 void DummyModule::handler()   { for(;;) {} } ;
_ZN11DummyModule7handlerEv:
??handler_0:
        B.N      ??handler_0
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function __iar_program_start
        THUMB
__iar_program_start:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall __iar_init_core
        BL       __iar_init_core
          CFI FunCall __iar_init_vfp
        BL       __iar_init_vfp
          CFI FunCall __cmain
        BL       __cmain
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock2
        REQUIRE __vector_table

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt5arrayIhLj255EEixEj
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function _ZNSt5arrayIhLj255EEixEj
          CFI NoCalls
        THUMB
// __interwork __vfp uint8_t & std::array<uint8_t, 255U>::operator[](size_t)
_ZNSt5arrayIhLj255EEixEj:
        ADD      R0,R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper11RtosWrapper19wHandleSvcInterruptEv
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function _ZN9OsWrapper11RtosWrapper19wHandleSvcInterruptEv
        THUMB
// __interwork __vfp void OsWrapper::RtosWrapper::wHandleSvcInterrupt()
_ZN9OsWrapper11RtosWrapper19wHandleSvcInterruptEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall vPortSVCHandler
        BL       vPortSVCHandler
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper11RtosWrapper23wHandleSysTickInterruptEv
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function _ZN9OsWrapper11RtosWrapper23wHandleSysTickInterruptEv
        THUMB
// __interwork __vfp void OsWrapper::RtosWrapper::wHandleSysTickInterrupt()
_ZN9OsWrapper11RtosWrapper23wHandleSysTickInterruptEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall xPortSysTickHandler
        BL       xPortSysTickHandler
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper4Rtos18HandleSvcInterruptEv
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function _ZN9OsWrapper4Rtos18HandleSvcInterruptEv
        THUMB
// __interwork __vfp void OsWrapper::Rtos::HandleSvcInterrupt()
_ZN9OsWrapper4Rtos18HandleSvcInterruptEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN9OsWrapper11RtosWrapper19wHandleSvcInterruptEv
        BL       _ZN9OsWrapper11RtosWrapper19wHandleSvcInterruptEv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper4Rtos22HandleSysTickInterruptEv
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function _ZN9OsWrapper4Rtos22HandleSysTickInterruptEv
        THUMB
// __interwork __vfp void OsWrapper::Rtos::HandleSysTickInterrupt()
_ZN9OsWrapper4Rtos22HandleSysTickInterruptEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN9OsWrapper11RtosWrapper23wHandleSysTickInterruptEv
        BL       _ZN9OsWrapper11RtosWrapper23wHandleSysTickInterruptEv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN14FieldValueBaseI20USART2_CR1_RE_ValuesIN6USART23CR1ELj2ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj0EE3SetIS3_vEEvv
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function _ZN14FieldValueBaseI20USART2_CR1_RE_ValuesIN6USART23CR1ELj2ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj0EE3SetIS3_vEEvv
          CFI NoCalls
        THUMB
// __interwork __vfp void FieldValueBase<USART2_CR1_RE_Values<USART2::CR1, 2U, 1U, ReadWriteMode, USART2::USART2CR1Base>, USART2::USART2CR1Base, 0U>::Set<ReadWriteMode, void>()
_ZN14FieldValueBaseI20USART2_CR1_RE_ValuesIN6USART23CR1ELj2ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj0EE3SetIS3_vEEvv:
        LDR.N    R1,??Set_0       ;; 0x4000440c
        LDR      R0,[R1, #+0]
        BICS     R0,R0,#0x4
        STR      R0,[R1, #+0]
        BX       LR               ;; return
        DATA
??Set_0:
        DATA32
        DC32     0x4000440c
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN14FieldValueBaseI23USART2_CR1_TXEIE_ValuesIN6USART23CR1ELj7ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj0EE3SetIS3_vEEvv
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function _ZN14FieldValueBaseI23USART2_CR1_TXEIE_ValuesIN6USART23CR1ELj7ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj0EE3SetIS3_vEEvv
          CFI NoCalls
        THUMB
// __interwork __vfp void FieldValueBase<USART2_CR1_TXEIE_Values<USART2::CR1, 7U, 1U, ReadWriteMode, USART2::USART2CR1Base>, USART2::USART2CR1Base, 0U>::Set<ReadWriteMode, void>()
_ZN14FieldValueBaseI23USART2_CR1_TXEIE_ValuesIN6USART23CR1ELj7ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj0EE3SetIS3_vEEvv:
        LDR.N    R1,??Set_1       ;; 0x4000440c
        LDR      R0,[R1, #+0]
        BICS     R0,R0,#0x80
        STR      R0,[R1, #+0]
        BX       LR               ;; return
        DATA
??Set_1:
        DATA32
        DC32     0x4000440c
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN14FieldValueBaseI20USART2_SR_TXE_ValuesIN6USART22SRELj7ELj1E8ReadModeNS1_12USART2SRBaseEES4_Lj1EE5IsSetIS3_vEEbv
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function _ZN14FieldValueBaseI20USART2_SR_TXE_ValuesIN6USART22SRELj7ELj1E8ReadModeNS1_12USART2SRBaseEES4_Lj1EE5IsSetIS3_vEEbv
          CFI NoCalls
        THUMB
// __interwork __vfp bool FieldValueBase<USART2_SR_TXE_Values<USART2::SR, 7U, 1U, ReadMode, USART2::USART2SRBase>, USART2::USART2SRBase, 1U>::IsSet<ReadMode, void>()
_ZN14FieldValueBaseI20USART2_SR_TXE_ValuesIN6USART22SRELj7ELj1E8ReadModeNS1_12USART2SRBaseEES4_Lj1EE5IsSetIS3_vEEbv:
        LDR.N    R0,??IsSet_0     ;; 0x40004400
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+7
        ANDS     R0,R0,#0x1
        BX       LR               ;; return
        DATA
??IsSet_0:
        DATA32
        DC32     0x40004400
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN14FieldValueBaseI23USART2_CR1_TXEIE_ValuesIN6USART23CR1ELj7ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj1EE5IsSetIS3_vEEbv
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function _ZN14FieldValueBaseI23USART2_CR1_TXEIE_ValuesIN6USART23CR1ELj7ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj1EE5IsSetIS3_vEEbv
          CFI NoCalls
        THUMB
// __interwork __vfp bool FieldValueBase<USART2_CR1_TXEIE_Values<USART2::CR1, 7U, 1U, ReadWriteMode, USART2::USART2CR1Base>, USART2::USART2CR1Base, 1U>::IsSet<ReadWriteMode, void>()
_ZN14FieldValueBaseI23USART2_CR1_TXEIE_ValuesIN6USART23CR1ELj7ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj1EE5IsSetIS3_vEEbv:
        LDR.N    R0,??IsSet_1     ;; 0x4000440c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+7
        ANDS     R0,R0,#0x1
        BX       LR               ;; return
        DATA
??IsSet_1:
        DATA32
        DC32     0x4000440c
          CFI EndBlock cfiBlock11

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN12RegisterBaseILj1073759236ELj32E13ReadWriteModeE5WriteIS0_vEEvj
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function _ZN12RegisterBaseILj1073759236ELj32E13ReadWriteModeE5WriteIS0_vEEvj
          CFI NoCalls
        THUMB
// __interwork __vfp void RegisterBase<1073759236U, 32U, ReadWriteMode>::Write<ReadWriteMode, void>(uint32_t)
_ZN12RegisterBaseILj1073759236ELj32E13ReadWriteModeE5WriteIS0_vEEvj:
        LDR.N    R1,??Write_0     ;; 0x40004404
        STR      R0,[R1, #+0]
        BX       LR               ;; return
        Nop      
        DATA
??Write_0:
        DATA32
        DC32     0x40004404
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN11UsartDriverI6Usart2EC1Ev
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function _ZN11UsartDriverI6Usart2EC1Ev
          CFI NoCalls
        THUMB
// __code __interwork __vfp UsartDriver<Usart2>::UsartDriver()
_ZN11UsartDriverI6Usart2EC1Ev:
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+256]
        BX       LR               ;; return
          CFI EndBlock cfiBlock13

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN11UsartDriverI6Usart2E18OnNextByteTransmitEv
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function _ZN11UsartDriverI6Usart2E18OnNextByteTransmitEv
        THUMB
// __interwork __vfp void UsartDriver<Usart2>::OnNextByteTransmit()
_ZN11UsartDriverI6Usart2E18OnNextByteTransmitEv:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        LDRB     R1,[R4, #+0]
        ADDS     R0,R1,#+1
        STRB     R0,[R4, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,#+1
          CFI FunCall _ZNSt5arrayIhLj255EEixEj
        BL       _ZNSt5arrayIhLj255EEixEj
        LDRB     R0,[R0, #+0]
          CFI FunCall _ZN5USARTI6USART2L_Z11usartDriverEE9WriteByteEh
        BL       _ZN5USARTI6USART2L_Z11usartDriverEE9WriteByteEh
        LDRB     R0,[R4, #+0]
        LDR      R1,[R4, #+256]
        CMP      R0,R1
        BCC.N    ??OnNextByteTransmit_0
          CFI FunCall _ZN5USARTI6USART2L_Z11usartDriverEE15TransmitDisableEv
        BL       _ZN5USARTI6USART2L_Z11usartDriverEE15TransmitDisableEv
          CFI FunCall _ZN5USARTI6USART2L_Z11usartDriverEE16InterruptDisableEv
        BL       _ZN5USARTI6USART2L_Z11usartDriverEE16InterruptDisableEv
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
??OnNextByteTransmit_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock14

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN5USARTI6USART2L_Z11usartDriverEE9WriteByteEh
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function _ZN5USARTI6USART2L_Z11usartDriverEE9WriteByteEh
        THUMB
// __interwork __vfp void USART<USART2, usartDriver>::WriteByte(uint8_t)
_ZN5USARTI6USART2L_Z11usartDriverEE9WriteByteEh:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall _ZN12RegisterBaseILj1073759236ELj32E13ReadWriteModeE5WriteIS0_vEEvj
        BL       _ZN12RegisterBaseILj1073759236ELj32E13ReadWriteModeE5WriteIS0_vEEvj
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock15

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN5USARTI6USART2L_Z11usartDriverEE16InterruptHandlerEv
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function _ZN5USARTI6USART2L_Z11usartDriverEE16InterruptHandlerEv
        THUMB
// __interwork __vfp void USART<USART2, usartDriver>::InterruptHandler()
_ZN5USARTI6USART2L_Z11usartDriverEE16InterruptHandlerEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN14FieldValueBaseI20USART2_SR_TXE_ValuesIN6USART22SRELj7ELj1E8ReadModeNS1_12USART2SRBaseEES4_Lj1EE5IsSetIS3_vEEbv
        BL       _ZN14FieldValueBaseI20USART2_SR_TXE_ValuesIN6USART22SRELj7ELj1E8ReadModeNS1_12USART2SRBaseEES4_Lj1EE5IsSetIS3_vEEbv
        CMP      R0,#+0
        BEQ.N    ??InterruptHandler_1
          CFI FunCall _ZN14FieldValueBaseI23USART2_CR1_TXEIE_ValuesIN6USART23CR1ELj7ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj1EE5IsSetIS3_vEEbv
        BL       _ZN14FieldValueBaseI23USART2_CR1_TXEIE_ValuesIN6USART23CR1ELj7ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj1EE5IsSetIS3_vEEbv
        CMP      R0,#+0
        BEQ.N    ??InterruptHandler_1
        LDR.N    R0,??InterruptHandler_0
          CFI FunCall _ZN11UsartDriverI6Usart2E18OnNextByteTransmitEv
        BL       _ZN11UsartDriverI6Usart2E18OnNextByteTransmitEv
??InterruptHandler_1:
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??InterruptHandler_0:
        DATA32
        DC32     usartDriver
          CFI EndBlock cfiBlock16

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN5USARTI6USART2L_Z11usartDriverEE16InterruptDisableEv
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function _ZN5USARTI6USART2L_Z11usartDriverEE16InterruptDisableEv
        THUMB
// __interwork __vfp void USART<USART2, usartDriver>::InterruptDisable()
_ZN5USARTI6USART2L_Z11usartDriverEE16InterruptDisableEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN14FieldValueBaseI23USART2_CR1_TXEIE_ValuesIN6USART23CR1ELj7ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj0EE3SetIS3_vEEvv
        BL       _ZN14FieldValueBaseI23USART2_CR1_TXEIE_ValuesIN6USART23CR1ELj7ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj0EE3SetIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock17

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN5USARTI6USART2L_Z11usartDriverEE15TransmitDisableEv
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function _ZN5USARTI6USART2L_Z11usartDriverEE15TransmitDisableEv
        THUMB
// __interwork __vfp void USART<USART2, usartDriver>::TransmitDisable()
_ZN5USARTI6USART2L_Z11usartDriverEE15TransmitDisableEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN14FieldValueBaseI20USART2_CR1_RE_ValuesIN6USART23CR1ELj2ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj0EE3SetIS3_vEEvv
        BL       _ZN14FieldValueBaseI20USART2_CR1_RE_ValuesIN6USART23CR1ELj2ELj1E13ReadWriteModeNS1_13USART2CR1BaseEES4_Lj0EE3SetIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock18

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN4UART16interruptHandlerEv
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function _ZN4UART16interruptHandlerEv
        THUMB
_ZN4UART16interruptHandlerEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN5USARTI6USART2L_Z11usartDriverEE16InterruptHandlerEv
        BL       _ZN5USARTI6USART2L_Z11usartDriverEE16InterruptHandlerEv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock19

        SECTION `.init_array`:CODE:ROOT(2)
        SECTION_TYPE SHT_INIT_ARRAY, 0
        DATA
        DC32    RELOC_ARM_TARGET1 __sti__routine

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION CSTACK:DATA:NOALLOC:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  161 
//  162 extern "C" void __cmain( void );
//  163 extern "C" __weak void __iar_init_core( void );
//  164 extern "C" __weak void __iar_init_vfp( void );
//  165 
//  166 #pragma required=__vector_table
//  167 void __iar_program_start( void )
//  168 {
//  169   __iar_init_core();
//  170   __iar_init_vfp();
//  171   __cmain();
//  172 }
//  173 
// 
// 261 bytes in section .bss
//   4 bytes in section .init_array
// 408 bytes in section .intvec
//  27 bytes in section .rodata
// 286 bytes in section .text
// 
//  52 bytes of CODE  memory (+ 238 bytes shared)
// 408 bytes of CONST memory (+  27 bytes shared)
//   0 bytes of DATA  memory (+ 261 bytes shared)
//
//Errors: none
//Warnings: none
