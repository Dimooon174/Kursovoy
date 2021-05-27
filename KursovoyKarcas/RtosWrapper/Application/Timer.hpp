#pragma once
#include "tim2registers.hpp"
#include "CoolerControl.hpp"
class Timer
{
  public:
    float SetPWM
    {
      auto PWM = CoolerControl.UpdateSpeed();
    }
  private:
    
};