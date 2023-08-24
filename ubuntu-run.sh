#git clone https://$(env.GH_PASS)@github.com/nuuwy0/kernel_xiaomi_mt6768 kernel
#cd kernel
echo "
# Telegram Chat ID to send build info
TELEGRAM_CHAT=""

# Telegram Channel ID to send announcement of the kernel
TELEGRAM_CHANNEL=""

# Telegram Bot Token
TELEGRAM_TOKEN="0"
ClangName=""
# Cleanup after successful compile
CLEANUP="yes"
" > config.env
#bash kb.sh
