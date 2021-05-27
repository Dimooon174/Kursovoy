#pragma once
#include "USARTDriver.h" //for USARTDriver
class ITransmit
{
public: 
  virtual void OnNextByteTransmit() = 0;
};