#!/bin/bash
TEST=1
if [[ $TEST == "0" ]]; then
git clone --depth=1 https://github.com/VelinXd/Dv-kernelRMX2189Q kernel && cd kernel
bash run.sh
else
git clone --depth=1 https://github.com/VelinXd/Dv-kernelRMX2189Q -b wifi kernel && cd kernel
bash run.sh
fi
