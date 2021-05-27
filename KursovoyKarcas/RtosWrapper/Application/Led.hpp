#pragma once
#include "ILed.hpp"
#include <gpioaregisters.hpp>  // for GPIOA
#include <gpiocregisters.hpp>  // for GPIOC

template<typename TPORT, int pinNum>
class Led : public ILed
{
public:
 
  void SwitchOn() const override
  {
    TPORT::BSRR::Write(1 << pinNum);
      
  }
  void SwitchOff() const override
  {
       TPORT::BSRR::Write((1 << pinNum) << 16);
  }
};