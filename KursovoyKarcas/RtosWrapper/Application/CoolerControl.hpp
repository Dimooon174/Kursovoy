#pragma once


class CoolerControl
{
public:
  float UpdateSpeed(float temperature)
  {
    e=23.0f - temperature;//разница между 23 градусами и измеренной температурой
    P=Kp*e;     //пропорциональный коэф
    I=I+Ki*e;  // интегральный коэф
    D=Kd*(e-e0); //дифференциальный коэф
    e0=e; //прошлое значение ошибки
    float Speed = P + I + D; //формула скорости
    return Speed;
  }
private:
  float Kp=0.0F;
  float Ki=0.0F;
  float Kd=0.0F;
  float P;
  float I;
  float D;
  float e;
  float e0;

  
  
};