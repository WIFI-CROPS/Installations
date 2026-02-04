#!/bin/bash
echo "Downloading script..."
wget -q https://raw.githubusercontent.com/WIFI-CROPS/Tools/refs/heads/main/Ubantu_Server/UnInstall_DB_Grafana_telegraf.txt -O UnInstall_DB_Grafana_telegraf.sh
sed -i 's/\r$//' UnInstall_DB_Grafana_telegraf.sh
chmod +x UnInstall_DB_Grafana_telegraf.sh
echo "Starting Uninstallation..."
./UnInstall_DB_Grafana_telegraf.sh
echo "Cleaning up..."
rm UnInstall_DB_Grafana_Telegr.sh
echo "Done! UnInstallation complete"
