#pragma once
#include "spi.h"

template<typename spi>
class SpiDriver
{
  std::array<char,200> transmiteBuf ={0};
  std::array<char,200> receiveBuf = {0};
  uint32_t transmiteMessLength=1;
  uint32_t receiveMessLength=1;
  bool messageWasReceived=false;
  bool messageWasTransmited=false;
  uint32_t Rit=0;
  uint32_t Tit=0;
 public:
  void SendMessage(char* message, std::size_t size)
  {
    messageWasTransmited=false;   
    uint32_t L=size;
    if(transmiteBuf.size()<L) L=transmiteBuf.size();
    transmiteMessLength=L;
    std::memcpy(transmiteBuf.data(), message,transmiteMessLength);
    messageWasReceived=(receiveMessLength==0);
    if(receiveMessLength!=0)
    {
      spi::ReceiveBufNotEmptyInterruptEnable();
    }
    spi::TransmiteBufEmptyInterruptEnable();
     
  }
  void SendByte(char byte)
  {
    messageWasTransmited=false;   
    transmiteMessLength=1;
    transmiteBuf[0]=byte;
    messageWasReceived=(receiveMessLength==0);
    if(receiveMessLength!=0)
    {
      spi::ReceiveBufNotEmptyInterruptEnable();
    }
    spi::TransmiteBufEmptyInterruptEnable();   
  }
  
  void OnNextByteTransmite()
  {
    if(Tit<transmiteMessLength||(!messageWasReceived))
    {
      if(Tit>=transmiteMessLength)
      {
        transmiteBuf[Tit]=transmiteBuf[Tit-1];
      }
      spi::SendByte(transmiteBuf[Tit++]);
    }
    else
    {
      Tit=0;
      spi::TransmiteBufEmptyInterruptDisable();
      if(receiveMessLength==0)
      {
        while(!spi::TransmittionCompleted())
        {
        }
      }
      messageWasTransmited=true;
    }
  }

  void OnNextByteReceive()
  {
    static bool isfirst=true;
    uint8_t bf=spi::ReadByte();
    if(!messageWasReceived)
    {
      if(!isfirst)
      {
        receiveBuf[Rit++]=bf;
        if(Rit==receiveMessLength)
        {         
          spi::ReceiveBufNotEmptyInterruptDisable();
          Rit=0;
          messageWasReceived=true;
          isfirst=true;
        }
      }
      else
      {
        isfirst=false;
      }
    }
  }
    
   bool IsMessageReceived()
   {
     return messageWasReceived;
   }
   bool IsMessageTransmited()
   {
     return messageWasTransmited;
   }
  void GetMessage(char* outBuf)
   {
     std::memcpy(outBuf, receiveBuf.data(),receiveMessLength);
     receiveBuf.fill(0);
     messageWasReceived=false;
   }
  char GetByte()
  {
    messageWasReceived=false;
    char bf = receiveBuf[0];
    receiveBuf[0]=0;
    return bf;
  }
    
  void SetReceivedMesLength(std::size_t size)
  {
    receiveMessLength=size;
  }
};
