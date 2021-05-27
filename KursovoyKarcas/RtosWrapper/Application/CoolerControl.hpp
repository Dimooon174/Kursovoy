#pragma once


class CoolerControl
{
public:
  float UpdateSpeed(float temperature)
  {
    e=23.0f - temperature;//������� ����� 23 ��������� � ���������� ������������
    P=Kp*e;     //���������������� ����
    I=I+Ki*e;  // ������������ ����
    D=Kd*(e-e0); //���������������� ����
    e0=e; //������� �������� ������
    float Speed = P + I + D; //������� ��������
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