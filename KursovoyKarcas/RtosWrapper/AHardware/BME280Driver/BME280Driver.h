#pragma once
#include "spiDriver.h"
#include "math.h"

#define BME280_REG_ID 0xD0 //BME280 ID REGISTER

#define BME280_ID 0x60 //BME280 ID

#define BME280_REG_CAL 0x88 //BME280 ID REGISTER

#define BME280_REG_SOFTRESET 0xE0 //BME280 SOFT RESET REGISTER

#define BME280_SOFTRESET_VALUE 0xB6 //BME280 SOFT RESET VALUE

#define BME280_REGISTER_STATUS 0XF3 //BME280 STATUS REGISTER

#define BME280_STATUS_MEASURING 0X08 //Running conversion

#define BME280_STATUS_IM_UPDATE 0X01 //NVM data copying

#define BME280_REG_CONFIG 0xF5 // Configuration register\

#define BME280_REGISTER_PRESSUREDATA 0xF7

#define BME280_REGISTER_TEMPDATA 0xFA

#define BME280_REGISTER_HUMIDDATA 0xFD


template<auto& spiDriver,typename CSPin>
class BME280Driver
{
  
  union
{
  struct BME280CalibStruct
  {
    uint16_t dig_T1;
    
    int16_t dig_T2;
    
    int16_t dig_T3;
    
    uint16_t dig_P1;
    
    int16_t dig_P2;
    
    int16_t dig_P3;
    
    int16_t dig_P4;
    
    int16_t dig_P5;
    
    int16_t dig_P6;
    
    int16_t dig_P7;
    
    int16_t dig_P8;
    
    int16_t dig_P9;
    
    uint8_t dig_H1;
    
    int16_t dig_H2;
    
    uint8_t dig_H3;
    
    int16_t dig_H4;
    
    int16_t dig_H5;
    
    int8_t dig_H6;
    
  } __attribute__((packed)) calibStruct;
  
  char calibRegData[33];
};
  
  double temperature_;
  double pressure_;
  double humidity_;
  double dewPoint_;
  uint32_t tempInt=138347U;
  uint32_t pressInt;
  
  void CircuitSelect()
  {
    CSPin::Reset();
  }

  void CircuitDeselect()
  {
    CSPin::Set();
  }
  
public:
  const double& temperature=temperature_;
  const double& pressure=pressure_;
  const double& humidity=humidity_;
  const double& dewPoint=dewPoint_;
  
  BME280Driver()
  {
    CSPin::Set();
  }
 
  
  void SetConnect()
  {
    static uint8_t countOfSucces=0;
    
    char tbyte = 0x80|BME280_REG_ID;
    char rByte=0;
    while (countOfSucces < 10)
    {
      spiDriver.SetReceivedMesLength(1);
      CircuitSelect();
      spiDriver.SendByte(tbyte);
      CircuitDeselect();
      while(!spiDriver.IsMessageReceived())
      {}
      rByte = spiDriver.GetByte();
      if(rByte==BME280_ID)
      {
        countOfSucces++;
      }
      else
      {
        countOfSucces=0;
      }
    }
  }
  
  char ReadRegister(char byte)
  {
    CircuitSelect();
    spiDriver.SetReceivedMesLength(1);
    spiDriver.SendByte(byte|0x80);
    while(!spiDriver.IsMessageReceived())
    {}
    CircuitDeselect();
    return spiDriver.GetByte();
  }
  
  void WriteRegister(char address, char regdata)
  {
    spiDriver.SetReceivedMesLength(0);
    char mes[2]={(char)(address&0x7F),regdata};
    CircuitSelect();
    spiDriver.SendMessage(mes,2);
    CircuitDeselect();
  }
  
  void ReadSpanOfRegisters(char firstAddress, char* outBuf, std::size_t length)
  {
    spiDriver.SetReceivedMesLength(length);
    CircuitSelect();
    spiDriver.SendByte(firstAddress|0x80);
    while(!spiDriver.IsMessageReceived())
    {}
    CircuitDeselect();
    spiDriver.GetMessage(outBuf);
  }
  
  void InitializeCalibrateData()
  {
    ReadSpanOfRegisters(BME280_REG_CAL,calibRegData, 24);
    calibStruct.dig_H1=ReadRegister(0xA1);
    ReadSpanOfRegisters(0xE1,(calibRegData+25), 3);
    short byte_E4 = ReadRegister(0xE4);
    short byte_E5 = ReadRegister(0xE5);
    short byte_E6 = ReadRegister(0xE6);
    calibStruct.dig_H4 = (byte_E4<<4)|(byte_E5&0x0F);
    calibStruct.dig_H5 = (byte_E6<<4)|((byte_E5&0xF0)>>4);
    calibStruct.dig_H6=ReadRegister(0xE7);
    
  }
  void StartMeasurements()
  {
    WriteRegister(0xF2,0x1);//hum
    WriteRegister(0xF4,0x20|0x4|0x3);//temp and press
  }
  void Reset()
  {
    WriteRegister(BME280_REG_SOFTRESET,BME280_SOFTRESET_VALUE);
    while(ReadRegister(0xF3)&0x9&BME280_STATUS_IM_UPDATE);
    
  }
  
  
  void Measure()
  {
    temperature_= ReadTemperature();
    pressure_= ReadPressure();
    humidity_=ReadHumidity();
    dewPoint_=CalcDewPoint();
  }
  
  
  float ReadTemperature()
  {
    char pTemp[3] = {0};
    ReadSpanOfRegisters(BME280_REGISTER_TEMPDATA,pTemp, 3);
    uint32_t tempRaw = (pTemp[0]<<16)+(pTemp[1]<<8)+pTemp[2];
    tempRaw>>=4;
    int32_t val1 = ((((tempRaw>>3) - ((int32_t) calibStruct.dig_T1 <<1))) *
                    
                    ((int32_t) calibStruct.dig_T2)) >> 11;
    
    int32_t val2 = (((((tempRaw>>4) - ((int32_t) calibStruct.dig_T1)) *
                      
                      ((tempRaw>>4) - ((int32_t) calibStruct.dig_T1))) >> 12) *
                    
                    ((int32_t) calibStruct.dig_T3)) >> 14;
    
    uint32_t tempInt = val1 + val2;
    float tempFloat = ((tempInt * 5 + 128) >> 8);
    tempFloat /= 100.0f;
    return tempFloat;
  }
  
  
  float ReadPressure()
  {
    char pPress[3] = {0};
    ReadSpanOfRegisters(BME280_REGISTER_PRESSUREDATA,pPress, 3);
    uint32_t pressRaw = (pPress[0]<<16)+(pPress[1]<<8)+pPress[2];
    pressRaw >>= 4;
    
    int64_t val1 = ((int64_t) tempInt) - 128000;
    
    int64_t val2 = val1 * val1 * (int64_t)calibStruct.dig_P6;
    
    val2 = val2 + ((val1 * (int64_t)calibStruct.dig_P5) << 17);
    
    val2 = val2 + ((int64_t)calibStruct.dig_P4 << 35);
    
    val1 = ((val1 * val1 * (int64_t)calibStruct.dig_P3) >> 8) + ((val1 * (int64_t)calibStruct.dig_P2) << 12);
    
    val1 = (((((int64_t)1) << 47) + val1)) * ((int64_t)calibStruct.dig_P1) >> 33;
    
    if (val1 == 0) {
      
      return 0; 
      
    }
    
    int64_t p = 1048576 - pressRaw;
    
    p = (((p << 31) - val2) * 3125) / val1;
    
    val1 = (((int64_t)calibStruct.dig_P9) * (p >> 13) * (p >> 13)) >> 25;
    
    val2 = (((int64_t)calibStruct.dig_P8) * p) >> 19;
    
    p = ((p + val1 + val2) >> 8) + ((int64_t)calibStruct.dig_P7 << 4);
    
    pressInt = p; //((p >> 8) * 1000) + (((p & 0xff) * 390625) / 100000);
    
    float pressFloat = p;
    pressFloat = pressFloat/ 25600;
    return pressFloat;
  } 
  
  float ReadHumidity()
  {
    char pHumid[2] = {0};
    ReadSpanOfRegisters(BME280_REGISTER_HUMIDDATA,pHumid, 2);
    uint16_t humidRaw = (pHumid[0]<<8)+pHumid[1];
    int32_t humidRawSign = ((int32_t)humidRaw)&0x0000FFFF;
    int32_t v_x1_u32r = (tempInt - ((int32_t)76800));
    
    v_x1_u32r = (((((humidRawSign << 14) - (((int32_t)calibStruct.dig_H4) << 20) -
                    
                    (((int32_t)calibStruct.dig_H5) * v_x1_u32r)) + ((int32_t)16384)) >> 15) *
                 
                 (((((((v_x1_u32r * ((int32_t)calibStruct.dig_H6)) >> 10) *
                      
                      (((v_x1_u32r * ((int32_t)calibStruct.dig_H3)) >> 11) + ((int32_t)32768))) >> 10) +
                    
                    ((int32_t)2097152)) * ((int32_t)calibStruct.dig_H2) + 8192) >> 14));
    
    v_x1_u32r = (v_x1_u32r - (((((v_x1_u32r >> 15) * (v_x1_u32r >> 15)) >> 7) *
                               
                               ((int32_t)calibStruct.dig_H1)) >> 4));
    
    v_x1_u32r = (v_x1_u32r < 0) ? 0 : v_x1_u32r;
    
    v_x1_u32r = (v_x1_u32r > 419430400) ? 419430400 : v_x1_u32r;
    
    float humidFloat = (v_x1_u32r>>12);//humidRaw;
    
    humidFloat /= 1024.0f;
    return humidFloat;
  }
  
  float CalcDewPoint()
  {
    float a = 17.27;
    float b = 237.7;
    float T = temperature;
    float RH = humidity/100;
    float gamma = a*T/(b+T)+log(RH);
    float Tp = b*gamma/(a-gamma);
    return Tp;
  }
  
};