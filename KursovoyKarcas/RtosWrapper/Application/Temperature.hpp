#pragma once
#include "adc1registers.hpp"
#include "adccommonregisters.hpp"
#include <iostream>


class Temperature
{
public:
 float GetValue()
 {
     ADC1::CR2::SWSTART::On::Set();
     while(!ADC1::SR::EOC::ConversionComplete::IsSet())
     {};
     float  data =  static_cast<float>(ADC1::DR::Get()); //Get data from ADC;
     Temp = ((((data*3.3F)/4096.0F - V25)/AVG_Slope)+25.0F); //rachet temperturi
     return Temp;
 }
  private: 
  float V25 = 0.76F;
  float AVG_Slope = 0.0025F;
  float Temp = 0.0F;
  };