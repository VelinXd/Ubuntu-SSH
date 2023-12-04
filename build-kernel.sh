#! /usr/bin/bash
git clone --depth=1 https://github.com/eraselk/realme_C11_C12_C15_kernel kernel
cd kernel
git clone --depth=1 https://github.com/EternalX-project/aarch64-linux-gnu gcc64 ; git clone --depth=1 https://github.com/EternalX-project/arm-linux-gnueabi.git gcc32
touch build.sh 
echo "export KBUILD_BUILD_USER="eraselk"
export LOCALVERSION="codespace
make -j$(nproc --all) O=out ARCH=arm64 oppo6765_defconfig
make -j$(nproc --all) ARCH=arm64 O=out \
CROSS_COMPILE="${PWD}/gcc64/bin/aarch64-linux-gnu-" \
CROSS_COMPILE_ARM32="${PWD}/gcc32/bin/arm-linux-gnueabi-"
curl --upload-file out/arch/arm64/boot/Image.gz-dtb https://transfer.sh/Image.gz-dtb" >> build.sh
find . -type f -exec chmod 777 {} + ; bash build.sh
