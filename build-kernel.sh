#!/bin/bash
TEST=1#
if [[ $TEST == "0" ]]; then
git clone --depth=1 https://github.com/eraselk/kernel_realme_mt6765Q kernel && cd kernel
bash run.sh
else
git clone --depth=1 https://github.com/eraselk/kernel_realme_mt6765Q -b test kernel && cd kernel
bash run.sh
fi
