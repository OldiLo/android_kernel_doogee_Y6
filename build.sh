#!/bin/bash

#Nonta72, I'm lazy. So, I just use an automated script
#Thanks to @Mysteryagr

mkdir -p out

#export USE_CCACHE=1
export ARCH=arm64 ARCH_MTK_PLATFORM=mt6755
export SUBARCH=arm64
#export CROSS_COMPILE=/home/nonta72/linaro49/bin/aarch64-linux-gnu-

#Defconfig for Y6 with NetHunter support
make -C $PWD O=$PWD/out ARCH=arm64 ld_defconfig
#make ARCH=arm64 k6000_plus_defconfig

make -j4 -C $PWD O=$PWD/out ARCH=arm64
#make -j4 ARCH=arm64
