#pragma once
#include "thread.hpp"//for thread
#include "UsartConfig.hpp"
#include "UsartDriver.hpp"
#include <stdio.h> //for sprintf
#include "CoolerTask.hpp"
using namespace OsWrapper;
class USARTTask: public OsWrapper::Thread<512>
{
public:
  USARTTask(TemperatureTask& tTask, CoolerTask& aCoolerTask): tempTask(tTask), coolerTask(aCoolerTask)
  { }
  void Execute() override
  {
    for(;;)
    { 
      auto temperature = tempTask.GetTemp();
      auto speed = coolerTask.GetSpeed();
      //std::cout << " TEMP °C : " <<  temperature << std::endl;
      char str[40];
      sprintf(str, " Temperature: %3.2f C\n Speed: %3.2f %", temperature, speed);//возвращает отформатированную строку
      usartDriver.SendMessage(str, strlen(str));  
      Sleep(1000ms);
    }
  }
private:
  TemperatureTask& tempTask;
  CoolerTask& coolerTask;
};