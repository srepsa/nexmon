NEXMON_CHIP=CHIP_VER_BCM4398d0
NEXMON_CHIP_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_CHIP)`
NEXMON_FW_VERSION=FW_VER_24_671_6_9_r1031525
NEXMON_FW_VERSION_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_FW_VERSION)`

NEXMON_ARCH=armv7-a

RAM_FILE=fw_bcmdhd.bin_4398_d0
RAMSTART=0x2A0000
RAMSIZE=0x400000

ROM_FILE=rom.bin
ROMSTART=0x10000
ROMSIZE=0x248CF0

# ucodes
UCODE0START=0x444730
UCODE0SIZE=0x5F38
UCODE0START_PTR=0x41B20C
UCODE0SIZE_PTR=0x41B208

UCODE1START=0x44A66C
UCODE1SIZE=0x1D598
UCODE1START_PTR=0x41B204
UCODE1SIZE_PTR=0x41B200

UCODE2START=0x467C08
UCODE2SIZE=0x20EE0
UCODE2START_PTR=0x41B1FC
UCODE2SIZE_PTR=0x41B1F8

WLC_UCODE_WRITE_BL_HOOK_ADDR=0x41B1A8

TINFLATE_OUTPUT_SIZE=$(UCODE2SIZE)

# safe restore
TEMPLATERAM0START_PTR=0x31B584
TEMPLATERAM0START=0x3DA5EC
TEMPLATERAM0SIZE=0x22C4
TEMPLATERAM1START_PTR=0x31B588
TEMPLATERAM1START=0x3D8B28
TEMPLATERAM1SIZE=0x1AC4
TEMPLATERAM2START_PTR=0x31B58C
TEMPLATERAM2START=0x3D7764
TEMPLATERAM2SIZE=0x13C4
TEMPLATERAM3START_PTR=0x31B590
TEMPLATERAM3START=0x3D51E0
TEMPLATERAM3SIZE=0x2584

# rom patches
FP_DATA_BASE=0x2A8000
FP_DATA_END=0x2AF800
FP_DATA_LAST_PTR=0x3F90BC
FP_CONFIG_ORIGBASE=0x488AE8
FP_CONFIG_ORIGEND=0x48AEB0
FP_CONFIG_BASE_PTR_1=0x3F91C8
FP_CONFIG_END_PTR_1=0x3F91C4
FP_CONFIG_BASE_PTR_2=0x3F906C
FP_CONFIG_END_PTR_2=0x3F9070
FP_CONFIG_BASE_PTR_3=0x3F9130
FP_CONFIG_END_PTR_3=0x3F9134
FP_CONFIG_BASE_PTR_4=0x4122DC
FP_CONFIG_END_PTR_4=0x4122E0

N_EXTRA_FP=775
FP_CONFIG_SIZE=$$(($(FP_CONFIG_ORIGEND) - $(FP_CONFIG_ORIGBASE) + 8 * $(N_EXTRA_FP)))
FP_CONFIG_BASE=$$(($(FP_CONFIG_ORIGBASE) - 8 * $(N_EXTRA_FP)))

# patch area
RECLAIM_3_END_PTR_0=0x2B4364
RECLAIM_3_END_PTR_1=0x411490
RECLAIM_3_END_PTR_2=0x4445A8
RECLAIM_3_ORIG_END=$(FP_CONFIG_ORIGBASE)

PATCHSIZE=0x10000
PATCHSTART=$$(($(RECLAIM_3_ORIG_END) - $(PATCHSIZE) - 8 * $(N_EXTRA_FP)))

VERSION_PTR_1=0x321ED0
VERSION_PTR_2=0x412894
VERSION_PTR_3=0x414898
VERSION_PTR_4=0x40FF34
DATETIME_PTR=0x321ED4
