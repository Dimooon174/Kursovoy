#pragma once
#include "BME280Driver.h"
#include "spiconfig.h"
#include "pinsconfig.h"

inline BME280Driver<spi2Transceiver, PinCSforBME280> bme280;