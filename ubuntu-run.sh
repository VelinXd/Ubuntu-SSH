#git clone https://$(env.GH_PASS)@github.com/nuuwy0/kernel_xiaomi_mt6768 kernel
#cd kernel
echo "
# Telegram Chat ID to send build info
TELEGRAM_CHAT="-1001769232453"

# Telegram Channel ID to send announcement of the kernel
TELEGRAM_CHANNEL="-1001769232453"

# Telegram Bot Token
TELEGRAM_TOKEN="6220436357:AAFbgs0EwIckxGCLC-QuVoYz8Cdh9jTCXP0"
ClangName="azure"
# Cleanup after successful compile
CLEANUP="yes"
" > config.env
#bash kb.sh
