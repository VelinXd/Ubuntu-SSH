#! /usr/bin/bash
# NON KSU
# SCRIPT BY ERASELK           
KSU="1"        

clone() {
sudo apt-get update -y && sudo apt-get upgrade -y ; sudo apt-get install python2 -y
sleep 5s
git clone --depth=1 https://github.com/eraselk/realme_C11_C12_C15_kernel kernel
cd kernel
sleep 5s

# clang 
git clone --depth=1 https://github.com/picasso09/clang-9.0.3-r353983c1 clang
touch build.sh 
echo "export KBUILD_BUILD_USER="eraselk"
export LOCALVERSION="codespace"
export PATH="${PWD}/clang/bin:$PATH"
make -j$(nproc --all) O=out ARCH=arm64 oppo6765_defconfig
make -j$(nproc --all) ARCH=arm64 O=out \
CROSS_COMPILE=aarch64-linux-gnu- \
CC="clang" \
CROSS_COMPILE_ARM32=arm-linux-gnueabi-
curl --upload-file out/arch/arm64/boot/Image.gz-dtb https://transfer.sh/Image.gz-dtb" >> build.sh
# KSU
if [[ $KSU == "1" ]]; then
curl -LSs "https://raw.githubusercontent.com/tiann/KernelSU/main/kernel/setup.sh" | bash -
        echo "CONFIG_KPROBES=y" >> arch/arm64/configs/oppo6765_defconfig
        echo "CONFIG_HAVE_KPROBES=y" >> arch/arm64/configs/oppo6765_defconfig
        echo "CONFIG_KPROBE_EVENTS=y" >> arch/arm64/configs/oppo6765_defconfig
        echo "CONFIG_OVERLAY_FS=y" >> arch/arm64/configs/oppo6765_defconfig
fi
if [[ $KSU == "0" ]]; then
build
fi
}
build() {
find . -type f -exec chmod 777 {} + ; bash build.sh
}
clone
build
