#!/bin/bash
echo "Downloading script..."
wget -q https://raw.githubusercontent.com/WIFI-CROPS/Tools/refs/heads/main/Ubantu_Server/Install_DB_Grafana_telegraf.txt -O Install_DB_Grafana_telegraf.sh
sed -i 's/\r$//' Install_DB_Grafana_telegraf.sh
chmod +x Install_DB_Grafana_telegraf.sh
echo "Starting installation..."
./Install_DB_Grafana_telegraf.sh
echo "Cleaning up..."
rm Install_DB_Grafana_telegraf.*
echo "Done! Installation complete"
