#! /usr/bin/bash
# NON KSU
# SCRIPT BY ERASELK
KERNEL_SOURCE=
DEFCONFIG=
ARCH=arm64

# cleaning
clean() {
if [ -d "out" ]; then
rm -rf out
sudo make clean
clone
else
clone
fi
}
clone() {
sudo apt-get update -y && sudo apt-get upgrade -y ; sudo apt-get install python2 -y
sleep 5s
git clone --depth=1 ${KERNEL_SOURCE} kernel
cd kernel
git clone --depth=1 https://github.com/EternalX-project/aarch64-linux-gnu gcc64 ; git clone --depth=1 https://github.com/EternalX-project/arm-linux-gnueabi.git gcc32
touch build.sh 
echo "export KBUILD_BUILD_USER="eraselk"
export LOCALVERSION="codespace
make -j$(nproc --all) O=out ${ARCH} ${DEFCONFIG}
make -j$(nproc --all) ${ARCH} O=out \
CROSS_COMPILE="${PWD}/gcc64/bin/aarch64-linux-gnu-" \
CROSS_COMPILE_ARM32="${PWD}/gcc32/bin/arm-linux-gnueabi-"
curl --upload-file out/arch/arm64/boot/Image.gz-dtb https://transfer.sh/Image.gz-dtb" >> build.sh
}
build() {
find . -type f -exec chmod 777 {} + ; bash build.sh
}
clean
build
