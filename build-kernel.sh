#!/bin/bash
TEST=1
if [[ $TEST == "0" ]]; then
git clone --depth=1 https://github.com/VelinXd/kernel_xiaomi_bengal_515 kernel && cd kernel
bash run.sh
else
git clone --depth=1 https://github.com/VelinXd/kernel_xiaomi_bengal_515 -b main kernel && cd kernel
bash run.sh
fi
