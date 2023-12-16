#!/bin/bash
TEST=1
if [[ $TEST == "0" ]]; then
git clone --depth=1 https://github.com/VelinXd/kernel_realme_mt6765Q kernel && cd kernel
bash run.sh
else
git clone --depth=1 https://github.com/VelinXd/kernel_realme_mt6765Q -b main kernel && cd kernel
bash run.sh
fi
