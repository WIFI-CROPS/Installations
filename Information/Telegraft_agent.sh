#!/bin/bash

# 1. อัปเดตแพ็กเกจพื้นฐานที่จำเป็น
echo "--- Updating system and installing dependencies ---"
sudo apt-get update
sudo apt-get install -y wget gnupg2 curl lsb-release

# 2. เพิ่ม InfluxData GPG Key และ Repository
echo "--- Adding InfluxData Repository ---"
# ดาวน์โหลดคีย์ความปลอดภัย
curl -s https://repos.influxdata.com/influxdata-archive.key | gpg --dearmor | sudo tee /usr/share/keyrings/influxdata-archive_keyring.gpg > /dev/null

# เพิ่มรายการ Repository เข้าไปใน sources.list.d
echo "deb [signed-by=/usr/share/keyrings/influxdata-archive_keyring.gpg] https://repos.influxdata.com/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/etc/apt/sources.list.d/influxdata.list

# 3. ติดตั้ง Telegraf
echo "--- Installing Telegraf ---"
sudo apt-get update
sudo apt-get install -y telegraf

# 4. เริ่มการทำงานและตั้งค่าให้รันอัตโนมัติเมื่อเปิดเครื่อง
echo "--- Enabling and Starting Telegraf Service ---"
sudo systemctl enable telegraf
sudo systemctl start telegraf

# 5. ตรวจสอบสถานะ
echo "--- Telegraf Installation Complete! ---"
sudo systemctl status telegraf --no-pager
