
#pragma once
class Filter
{
public:

    Filter(float RC, float dt)
    {
       if (RC > 0)
       {
         tau = 1 - exp(-dt/RC);
       }
       else
       {
         tau=1;
       }
    }
    float FiltredValue(float tempval)
    {    
      FilteredValue = oldFilterValue + (tempval - oldFilterValue) * tau;
      oldFilterValue = FilteredValue;
      return FilteredValue;
    }
private:
   float FilteredValue;
   float oldFilterValue = 0.0F; 
   float tau = 0;
};