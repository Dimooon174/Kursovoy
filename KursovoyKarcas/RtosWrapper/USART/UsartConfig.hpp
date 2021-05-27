#pragma once
#include "USART.hpp"
#include "usart2registers.hpp"
#include "UsartDriver.hpp"

class Usart2;

inline UsartDriver <Usart2> usartDriver;
class Usart2: public USART < USART2, usartDriver >
{};