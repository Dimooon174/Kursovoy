#include "filter.hpp"
#pragma once
#include "Temperature.hpp"
#include <iostream>
#include "thread.hpp"
using namespace OsWrapper;

class TemperatureTask: public OsWrapper::Thread<512>
{
public:
  TemperatureTask(Temperature& aTemperature, Filter& aFilter): iTemp(aTemperature), iFilter(aFilter)
  { }
  float GetTemp()
  {
    return FilteredValue;
  };
  void Execute() override
  {
    for(;;)
    {
      float temp = iTemp.GetValue();
      FilteredValue = iFilter.FiltredValue(temp);
      Sleep(200ms);
    }
  }
private:
  
  Temperature iTemp; 
  Filter iFilter;
  float FilteredValue;
  

};