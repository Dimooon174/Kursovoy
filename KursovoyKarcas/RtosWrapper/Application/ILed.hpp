#pragma once

class ILed
{
  public:
    virtual void SwitchOn() const = 0;
    virtual void SwitchOff() const = 0;
};