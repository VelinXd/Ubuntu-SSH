gh=${{ env.GH_NAME }}
echo $GH_NAME
#git clone https://${{env.GH_NAME}}:${{env.GH_PASS}}@github.com/kernel_xiaomi_mt6768 -b Atomic-A11 kernel
#cd kernel
echo "
# Telegram Chat ID to send build info
TELEGRAM_CHAT="-1001769232453"

# Telegram Channel ID to send announcement of the kernel
TELEGRAM_CHANNEL="-1001769232453"

# Telegram Bot Token
TELEGRAM_TOKEN="6220436357:AAFbgs0EwIckxGCLC-QuVoYz8Cdh9jTCXP0"

# Clang name to use (Options are: azure, neutron, proton and zyc)
ClangName="azure"

# Kernel variant / type !!! Don't forget to change after changing clang name !!!
KERNEL_VARIANT="Azure"

# KernelSU (Options are: yes and no)
KERNELSU="no"

# Send announcement to a channel after a successful compile
SEND_ANNOUNCEMENT="yes"

# Cleanup after successful compile
CLEANUP="yes"
" > config.env
bash kb.sh
