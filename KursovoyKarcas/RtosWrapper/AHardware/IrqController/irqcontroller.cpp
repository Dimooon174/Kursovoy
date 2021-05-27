//
// Created by Sergey on 27.08.2018.
//
#include "irqcontroller.hpp"
#include "tim2registers.hpp"
void IrqController::HandleIrqExtiLine15_10()
{
  
}

void IrqController::HandleIrqTim2()
{
    TIM2::SR::UIF::NoUpdate::Set();

}
