NEXMON_CHIP=CHIP_VER_BCM4359
NEXMON_CHIP_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_CHIP)`
NEXMON_FW_VERSION=FW_VER_9_40_112_1_r712207_CY
NEXMON_FW_VERSION_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_FW_VERSION)`

NEXMON_ARCH=armv7-r

RAM_FILE=fw_bcmdhd.bin
RAMSTART=0x180000
RAMSIZE=0xC0000

ROM_FILE=rom.bin
ROMSTART=0x0
ROMSIZE=0xC0000

HNDRTE_RECLAIM_0_END=0x2132a8  # same as templateramend?

PATCHSIZE=0x4000
PATCHSTART=$$(($(HNDRTE_RECLAIM_0_END) - $(PATCHSIZE)))

# original ucode start and size
UCODESTART=0x202e5c  # dcok
UCODESIZE=0xeca0  # dcok

# original template ram start and size
TEMPLATERAMSTART=0x211b00  # dcok
TEMPLATERAMSIZE=0x17a8  # dcok

FP_DATA_END_PTR=0x1dc424
FP_CONFIG_BASE_PTR_1=0x1dc410
FP_CONFIG_BASE_PTR_2=0x1da5ac
FP_CONFIG_END_PTR_1=0x1dc414
FP_CONFIG_END_PTR_2=0x1da5a8
FP_CONFIG_SIZE=0x800  # this is just to ensure enoigh space in the newly created config area right? orig end - start is 6e8
FP_CONFIG_BASE=$$(($(PATCHSTART) - $(FP_CONFIG_SIZE)))
FP_DATA_BASE=0x181000
FP_CONFIG_ORIGBASE=0x181800
FP_CONFIG_ORIGEND=0x181ee8

##########################################
# definitions for the nexmon patch       #
##########################################
# required by patch.c
WLC_UCODE_WRITE_BL_HOOK_ADDR=0x1ec30c  # dcok
TEMPLATERAMSTART_PTR=0x202c78  # dcok
HNDRTE_RECLAIM_0_END_PTR=0x1894f4  # dcok

# required by version.c
VERSION_PTR=0x1e82cc  # dcok
