//
// Created by Sergey on 27.08.2018.
//

#ifndef UNTITLED_IRQCONTROLLER_HPP
#define UNTITLED_IRQCONTROLLER_HPP


class IrqController
{
  public:
    static void HandleIrqExtiLine15_10();
    static void HandleIrqTim2();
};

#endif //UNTITLED_IRQCONTROLLER_HPP
