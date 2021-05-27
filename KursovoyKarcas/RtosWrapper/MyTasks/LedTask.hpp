#pragma once
#include "Led.hpp" //for Iled
#include "thread.hpp" //for thread
#include "CoolerTask.hpp"
using namespace OsWrapper;
class LedTask :public OsWrapper::Thread<512>
{
  LedTask(CoolerTask& aCoolerTask): coolerTask(aCoolerTask)
  { }
public:
  void Execute() override {
    for(;;){
     auto speed = coolerTask.GetSpeed();
     if(speed>20.0f)
     {led1.SwitchOn();}
     else
     {led1.SwitchOff();}
     if(speed>40.0f)
     {led2.SwitchOn();}
     else
     {led2.SwitchOff();}
     if(speed>60.0f)
     {led3.SwitchOn();}
     else
     {led3.SwitchOff();}
     if(speed>80.0f)
     {led4.SwitchOn();}
     else
     {led4.SwitchOff();}
    }
  }
  //LedTask(std::chrono::milliseconds aPeriod) {};
private:
  //Led iLed;
  CoolerTask& coolerTask;
  static constexpr auto led1 = Led<GPIOA, 5>();
  static constexpr auto led2 = Led<GPIOC, 9>();
  static constexpr auto led3 = Led<GPIOC, 8>();
  static constexpr auto led4 = Led<GPIOC, 5>();
  const ILed* const led[4] = {&led1, &led2, &led3, &led4};
  //std::chrono::milliseconds period;
};