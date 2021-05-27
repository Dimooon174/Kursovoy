  
#pragma once
#include <array>
#include <cassert>



template<typename TUsart>
class UsartDriver
{
public:
   void OnNextByteTransmit()
  {
    TUsart::WriteByte(TransmitBuffer[i++]);    
    if (i >= size)
    {
      TUsart::TransmitDisable();
      TUsart::InterruptDisable();
      i = 0U;
    }
  }
   void SendMessage(const char* message, size_t aSize)
  {
    assert(size <= 255); 
    memcpy(TransmitBuffer.data(), message, aSize);
    size = aSize;
    i = 0U;
    TUsart::WriteByte(TransmitBuffer[i++]); 
    TUsart::TransmitEnable();
    TUsart::InterruptEnable(); 
         
  }

private:
  std::uint8_t i = 0U;
  std::array<std::uint8_t, 255> TransmitBuffer;
  size_t size = 0U;  
  
};
