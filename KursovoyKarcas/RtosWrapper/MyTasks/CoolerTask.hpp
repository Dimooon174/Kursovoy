#pragma once
#include "Thread.hpp"
#include "CoolerControl.hpp"
#include "TemperatureTask.hpp"
using namespace OsWrapper;
class CoolerTask: public OsWrapper::Thread<512>
{
public:
CoolerTask(TemperatureTask& tTask, CoolerControl& aCoolerControl): temperatureTask(tTask), aCooler(aCoolerControl)
{}
    float GetSpeed()
  {
    return speed;
  };
  void Execute() override
  {
    for(;;)
    {    
      auto temperature = temperatureTask.GetTemp();
      speed = aCooler.UpdateSpeed(temperature);
      Sleep(200ms);
    }
  }

private:
  float speed;
  CoolerControl& aCooler;
  TemperatureTask& temperatureTask;
};