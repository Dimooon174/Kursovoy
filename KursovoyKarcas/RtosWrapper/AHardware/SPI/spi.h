#pragma once
#include "spi2registers.hpp"
#include "spi1registers.hpp"
#include <gpiocregisters.hpp>
#include <gpiobregisters.hpp>

struct SpiConfig
{
  SpiConfig();
};

template<typename SPIx, auto& transceiver>
class SPI
{
  static SpiConfig config;
  
public:
  using T=char;

  static void Config(SpiConfig config);
  
  static void SendByte(T byte)
  {
    
    SPIx::DR::Write(byte);
    
  }
  static T ReadByte()
  {
    return SPIx::DR::Get();
  }
  
  static void TransmiteBufEmptyInterruptEnable()
  {
    SPIx::CR2::TXEIE::NotMasked::Set();
  }  
  
  static void TransmiteBufEmptyInterruptDisable()
  {
    SPIx::CR2::TXEIE::Masked::Set();
  } 
  
  static void ReceiveBufNotEmptyInterruptEnable()
  {
    SPIx::CR2::RXNEIE::NotMasked::Set();
  }  
  
   static void ReceiveBufNotEmptyInterruptDisable()
  {
    SPIx::CR2::RXNEIE::Masked::Set();
  }  
  
  static bool TransmittionCompleted()
  {
    return SPIx::SR::BSY::NotBusy::IsSet();
  }
  
  static void SpiInterruptHandler()
  {
    if(SPIx::CR2::RXNEIE::NotMasked::IsSet()&&SPIx::SR::RXNE::RxBufferNotEmpty::IsSet())
    {
       transceiver.OnNextByteReceive();
    }
    if (SPIx::CR2::TXEIE::NotMasked::IsSet()&&SPIx::SR::TXE::TxBufferEmpty::IsSet())
    {
      transceiver.OnNextByteTransmite();
    }
  }
};