#include "rtos.hpp"         // for Rtos
#include "mailbox.hpp"      // for Mailbox
#include "event.hpp"        // for Event
#include "rccregisters.hpp" // for RCC
#include <iostream>
#include <gpioaregisters.hpp>  // for GPIOA
#include <gpiobregisters.hpp>  // for GPIOB
#include <gpiocregisters.hpp>  // for GPIOC
#include "adc1registers.hpp"
#include "adccommonregisters.hpp"
#include "UsartConfig.hpp" //for usartconfig
#include "Ledtask.hpp"
#include "tim2registers.hpp"
#include "nvicregisters.hpp"
#include "spi1registers.hpp"
#include "spi2registers.hpp"
#include "Temperature.hpp"
#include "TemperatureTask.hpp"
#include "stkregisters.hpp"
#include "scbregisters.hpp"
#include "USARTTask.hpp"
#include "CoolerTask.hpp"

std::uint32_t SystemCoreClock = 8'000'000U;
constexpr std::uint32_t UartSpeed9600 = std::uint32_t(16000000U / 9600U);

extern "C" {
int __low_level_init(void)
{
  //Switch on external 16 MHz oscillator
  RCC::CR::HSION::On::Set();
 // while (RCC::CR::HSIRDY::NotReady::IsSet())
  {

  }
  //Switch system clock on external oscillator
  RCC::CFGR::SW::Hsi::Set();
  //while (!RCC::CFGR::SWS::Hsi::IsSet())
 {

  }
  //Switch on clock on PortA and PortC
  RCC::AHB1ENRPack<
      RCC::AHB1ENR::GPIOCEN::Enable,
      RCC::AHB1ENR::GPIOBEN::Enable,
      RCC::AHB1ENR::GPIOAEN::Enable
  >::Set();

  //Start system Timer
  RCC::APB2ENR::SYSCFGEN::Enable::Set();
  RCC::APB1ENR::TIM2EN::Enable::Set();
  //LED1 on PortA.5, set PortA.5 as output
  GPIOA::MODER::MODER5::Output::Set();

  /* LED2 on PortC.9, LED3 on PortC.8, LED4 on PortC.5 so set PortC.5,8,9 as output */
  GPIOC::MODERPack<
      GPIOC::MODER::MODER5::Output,
      GPIOC::MODER::MODER8::Output,
      GPIOC::MODER::MODER9::Output
  >::Set();
  
 GPIOA::MODER::MODER10::Output::Set();
 GPIOA::BSRR::BS10::High::Write();
 GPIOB::MODER::MODER10::Output::Set();
 GPIOB::BSRR::BS10::High::Write();
  GPIOB::MODER::MODER10::Alternate::Set();
  GPIOB::AFRH::AFRH10::Af1::Set();
  //ADC
RCC::APB2ENR::ADC1EN::Enable::Set(); //включаем АЦП
ADC1::SQR3::SQ1::Channel18::Set();// настраиваем порт датчика т-ры
ADC_Common::CCR::TSVREFE::Enable::Set();// включаем порт датчика температуры
ADC1::CR1::RES::Bits12::Set();//разрядность 12бит
ADC1::CR2::CONT::SingleConversion::Set();//установ одиночное преобразование
ADC1::CR2::EOCS::SingleConversion::Set();//установ одиночное преобразование
ADC1::SQR1::L::Conversions1::Set();//количество измерений 1
ADC1::SMPR1::SMP18::Cycles84::Set();// скорость дискретизации
ADC1::CR2::ADON::Enable::Set();//


  //TIM2
  RCC::APB1ENR::TIM2EN::Enable::Set();
  TIM2::PSC::Write(0);
  TIM2::ARR::Write(500);
  TIM2::SR::UIF::NoUpdate::Set();
  TIM2::CNT::Write(0);
  TIM2::CCR3::Write(1000);
  TIM2::EGR::UG::UpdateGenerated::Write();
  TIM2::CCMR2_Output::OC3M::PwmMode1::Set();
  TIM2::CCMR2_Output::OC3PE::Enable::Set();
  TIM2::CR1::ARPE::ArrBuffered::Set();
  TIM2::CCER::CC3E::On::Set();
  TIM2::CR1::CEN::Enable::Set() ;
  
  
  //USART  
  RCC::APB1ENRPack<
    RCC::APB1ENR::TIM2EN::Enable, 
    RCC::APB1ENR::USART2EN::Enable
    >::Set() ;
  
  GPIOA::MODERPack<
    GPIOA::MODER::MODER2::Alternate, // Uart2 TX
    GPIOA::MODER::MODER3::Alternate  // Uart2 RX
    >::Set() ;
  
  GPIOA::AFRLPack <
    GPIOA::AFRL::AFRL2::Af7, // Uart2 TX
    GPIOA::AFRL::AFRL3::Af7  // Uart2 RX
    >::Set() ;
  
    USART2::BRR::Write(UartSpeed9600);
    USART2::CR1::UE::Enable::Set();    
    NVIC::ISER1::Write(1<<6);

//system timer
  STK::LOAD::Write(SystemCoreClock/1000U - 1);
  STK::VAL::Write(0U);
  STK::CTRL::CLKSOURCE::CpuClock::Set();
  STK::CTRL::TICKINT::EnableInterrupt::Set();
  STK::CTRL::ENABLE::Enable::Set();
  
  return 1;
}
}
//ILed* leds[4] = {&led1, &led2, &led3, &led4};
//LedTask ledtask(100ms);
Temperature temperature;
Filter filter(1.0F, 0.200F);

TemperatureTask temperatureTask(temperature, filter);
CoolerTask coolerTask(temperatureTask, aCooler);
USARTTask usartTask(temperatureTask, coolerTask);
//LedTask ledTask(coolerTask);
int main()
{

 // for(auto it: leds)
 // {
 //   it->SwitchOn();
 // }
     Rtos::CreateThread(temperatureTask, "temperatureTask", ThreadPriority::normal);  
     Rtos::CreateThread(usartTask, "usartTask", ThreadPriority::normal); 
     Rtos::CreateThread(coolerTask, "coolerTask", ThreadPriority::normal); 
     //Rtos::CreateThread(LedTask, "ledTask", ThreadPriority::normal); 
     Rtos::Start();
//     
//    for(;;)
//    {
//     float a = temperature.GetValue();
//           std::cout << " TEMP °C : " <<  a << std::endl;
//    }  
  return 0;
}
