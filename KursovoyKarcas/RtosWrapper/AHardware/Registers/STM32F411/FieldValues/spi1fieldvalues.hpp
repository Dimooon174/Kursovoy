/*******************************************************************************
* Filename      : spi1fieldvalues.hpp
*
* Details       : Enumerations related with SPI1 peripheral. This header file is
*                 auto-generated for STM32F411 device.
*
*
*******************************************************************************/

#if !defined(SPI1ENUMS_HPP)
#define SPI1ENUMS_HPP

#include "fieldvalue.hpp"     //for FieldValues 

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_BIDIMODE_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Unidirectional2Line = FieldValue<SPI1_CR1_BIDIMODE_Values, BaseType, 0U> ;
  using Bidirectional1Line = FieldValue<SPI1_CR1_BIDIMODE_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_BIDIOE_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using OutputDisable = FieldValue<SPI1_CR1_BIDIOE_Values, BaseType, 0U> ;
  using OutputEnable = FieldValue<SPI1_CR1_BIDIOE_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_CRCEN_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using CrcCalcDisable = FieldValue<SPI1_CR1_CRCEN_Values, BaseType, 0U> ;
  using CrcCalcEnable = FieldValue<SPI1_CR1_CRCEN_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_CRCNEXT_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using NoCrcPhase = FieldValue<SPI1_CR1_CRCNEXT_Values, BaseType, 0U> ;
  using CrcPhase = FieldValue<SPI1_CR1_CRCNEXT_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_DFF_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Data8bit = FieldValue<SPI1_CR1_DFF_Values, BaseType, 0U> ;
  using Data16bit = FieldValue<SPI1_CR1_DFF_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_RXONLY_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using FullDuplex = FieldValue<SPI1_CR1_RXONLY_Values, BaseType, 0U> ;
  using OutputDisable = FieldValue<SPI1_CR1_RXONLY_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_SSM_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using NssSoftwareDisable = FieldValue<SPI1_CR1_SSM_Values, BaseType, 0U> ;
  using NssSoftwareEnable = FieldValue<SPI1_CR1_SSM_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_SSI_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Value0 = FieldValue<SPI1_CR1_SSI_Values, BaseType, 0U> ;
  using Value1 = FieldValue<SPI1_CR1_SSI_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_LSBFIRST_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using MsbFisrt = FieldValue<SPI1_CR1_LSBFIRST_Values, BaseType, 0U> ;
  using LsbFirst = FieldValue<SPI1_CR1_LSBFIRST_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_SPE_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Disable = FieldValue<SPI1_CR1_SPE_Values, BaseType, 0U> ;
  using Enable = FieldValue<SPI1_CR1_SPE_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_BR_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using PclockDiv2 = FieldValue<SPI1_CR1_BR_Values, BaseType, 0U> ;
  using PclockDiv4 = FieldValue<SPI1_CR1_BR_Values, BaseType, 1U> ;
  using PclockDiv8 = FieldValue<SPI1_CR1_BR_Values, BaseType, 2U> ;
  using PclockDiv16 = FieldValue<SPI1_CR1_BR_Values, BaseType, 3U> ;
  using PclockDiv32 = FieldValue<SPI1_CR1_BR_Values, BaseType, 4U> ;
  using PclockDiv64 = FieldValue<SPI1_CR1_BR_Values, BaseType, 5U> ;
  using PclockDiv128 = FieldValue<SPI1_CR1_BR_Values, BaseType, 6U> ;
  using PclockDiv256 = FieldValue<SPI1_CR1_BR_Values, BaseType, 7U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_MSTR_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Slave = FieldValue<SPI1_CR1_MSTR_Values, BaseType, 0U> ;
  using Master = FieldValue<SPI1_CR1_MSTR_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_CPOL_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Low = FieldValue<SPI1_CR1_CPOL_Values, BaseType, 0U> ;
  using High = FieldValue<SPI1_CR1_CPOL_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR1_CPHA_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Phase1edge = FieldValue<SPI1_CR1_CPHA_Values, BaseType, 0U> ;
  using Phase2edge = FieldValue<SPI1_CR1_CPHA_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR2_TXEIE_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Masked = FieldValue<SPI1_CR2_TXEIE_Values, BaseType, 0U> ;
  using NotMasked = FieldValue<SPI1_CR2_TXEIE_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR2_RXNEIE_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Masked = FieldValue<SPI1_CR2_RXNEIE_Values, BaseType, 0U> ;
  using NotMasked = FieldValue<SPI1_CR2_RXNEIE_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR2_ERRIE_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Masked = FieldValue<SPI1_CR2_ERRIE_Values, BaseType, 0U> ;
  using NotMasked = FieldValue<SPI1_CR2_ERRIE_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR2_FRF_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using MotorolaMode = FieldValue<SPI1_CR2_FRF_Values, BaseType, 0U> ;
  using TiMode = FieldValue<SPI1_CR2_FRF_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR2_SSOE_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using SsOutputDisable = FieldValue<SPI1_CR2_SSOE_Values, BaseType, 0U> ;
  using SsOutputEnable = FieldValue<SPI1_CR2_SSOE_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR2_TXDMAEN_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using TxBufferDmaDisable = FieldValue<SPI1_CR2_TXDMAEN_Values, BaseType, 0U> ;
  using TxBufferDmaEnable = FieldValue<SPI1_CR2_TXDMAEN_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CR2_RXDMAEN_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using RxBufferDmaDisable = FieldValue<SPI1_CR2_RXDMAEN_Values, BaseType, 0U> ;
  using RxBufferDmaEnable = FieldValue<SPI1_CR2_RXDMAEN_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_SR_TIFRFE_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using NoFrameError = FieldValue<SPI1_SR_TIFRFE_Values, BaseType, 0U> ;
  using FrameError = FieldValue<SPI1_SR_TIFRFE_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_SR_BSY_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using NotBusy = FieldValue<SPI1_SR_BSY_Values, BaseType, 0U> ;
  using Busy = FieldValue<SPI1_SR_BSY_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_SR_OVR_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using NoOverrun = FieldValue<SPI1_SR_OVR_Values, BaseType, 0U> ;
  using Overrun = FieldValue<SPI1_SR_OVR_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_SR_MODF_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using NoFaultMode = FieldValue<SPI1_SR_MODF_Values, BaseType, 0U> ;
  using FaultMode = FieldValue<SPI1_SR_MODF_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_SR_CRCERR_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using GoodCrc = FieldValue<SPI1_SR_CRCERR_Values, BaseType, 0U> ;
  using BadCrc = FieldValue<SPI1_SR_CRCERR_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_SR_UDR_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using NoUnderrun = FieldValue<SPI1_SR_UDR_Values, BaseType, 0U> ;
  using Underrun = FieldValue<SPI1_SR_UDR_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_SR_CHSIDE_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using ChannelLeft = FieldValue<SPI1_SR_CHSIDE_Values, BaseType, 0U> ;
  using ChannelRight = FieldValue<SPI1_SR_CHSIDE_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_SR_TXE_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using TxBufferNotEmpty = FieldValue<SPI1_SR_TXE_Values, BaseType, 0U> ;
  using TxBufferEmpty = FieldValue<SPI1_SR_TXE_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_SR_RXNE_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using RxBufferEmpty = FieldValue<SPI1_SR_RXNE_Values, BaseType, 0U> ;
  using RxBufferNotEmpty = FieldValue<SPI1_SR_RXNE_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_DR_DR_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_CRCPR_CRCPOLY_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_RXCRCR_RxCRC_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_TXCRCR_TxCRC_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_I2SCFGR_I2SMOD_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using SpiMode = FieldValue<SPI1_I2SCFGR_I2SMOD_Values, BaseType, 0U> ;
  using I2sMode = FieldValue<SPI1_I2SCFGR_I2SMOD_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_I2SCFGR_I2SE_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using I2sDisable = FieldValue<SPI1_I2SCFGR_I2SE_Values, BaseType, 0U> ;
  using I2sEnable = FieldValue<SPI1_I2SCFGR_I2SE_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_I2SCFGR_I2SCFG_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using SlaveTransmit = FieldValue<SPI1_I2SCFGR_I2SCFG_Values, BaseType, 0U> ;
  using SlaveRecieve = FieldValue<SPI1_I2SCFGR_I2SCFG_Values, BaseType, 1U> ;
  using MasterTransmit = FieldValue<SPI1_I2SCFGR_I2SCFG_Values, BaseType, 2U> ;
  using MasterReceive = FieldValue<SPI1_I2SCFGR_I2SCFG_Values, BaseType, 3U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_I2SCFGR_PCMSYNC_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using ShortFrameSynch = FieldValue<SPI1_I2SCFGR_PCMSYNC_Values, BaseType, 0U> ;
  using LongFrameSynch = FieldValue<SPI1_I2SCFGR_PCMSYNC_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_I2SCFGR_I2SSTD_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using I2sPhilips = FieldValue<SPI1_I2SCFGR_I2SSTD_Values, BaseType, 0U> ;
  using MsbJustified = FieldValue<SPI1_I2SCFGR_I2SSTD_Values, BaseType, 1U> ;
  using LsbJustified = FieldValue<SPI1_I2SCFGR_I2SSTD_Values, BaseType, 2U> ;
  using Pcm = FieldValue<SPI1_I2SCFGR_I2SSTD_Values, BaseType, 3U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_I2SCFGR_CKPOL_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using I2sSteadyStateLow = FieldValue<SPI1_I2SCFGR_CKPOL_Values, BaseType, 0U> ;
  using I2sSteadyStateHigh = FieldValue<SPI1_I2SCFGR_CKPOL_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_I2SCFGR_DATLEN_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Data16bit = FieldValue<SPI1_I2SCFGR_DATLEN_Values, BaseType, 0U> ;
  using Data24Bit = FieldValue<SPI1_I2SCFGR_DATLEN_Values, BaseType, 1U> ;
  using Data32Bit = FieldValue<SPI1_I2SCFGR_DATLEN_Values, BaseType, 2U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_I2SCFGR_CHLEN_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Wide16bit = FieldValue<SPI1_I2SCFGR_CHLEN_Values, BaseType, 0U> ;
  using Wide32bit = FieldValue<SPI1_I2SCFGR_CHLEN_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_I2SPR_MCKOE_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Value0 = FieldValue<SPI1_I2SPR_MCKOE_Values, BaseType, 0U> ;
  using Value1 = FieldValue<SPI1_I2SPR_MCKOE_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_I2SPR_ODD_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
  using Value0 = FieldValue<SPI1_I2SPR_ODD_Values, BaseType, 0U> ;
  using Value1 = FieldValue<SPI1_I2SPR_ODD_Values, BaseType, 1U> ;
} ;

template <typename Reg, size_t offset, size_t size, typename AccessMode, typename BaseType> 
struct SPI1_I2SPR_I2SDIV_Values: public RegisterField<Reg, offset, size, AccessMode> 
{
} ;


#endif //#if !defined(SPI1ENUMS_HPP)
