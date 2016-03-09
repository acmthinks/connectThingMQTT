#!/bin/bash

# Installing Paho Python client for MQTT
cd ~
sudo pip install paho-mqtt
git clone http://git.eclipse.org/gitroot/paho/org.eclipse.paho.mqtt.python.git
cd org.eclipse.paho.mqtt.python
sudo python setup.py install

# Setting sensor data generation script as executable
cd ~
cp ~/connectThingMQTT/connect.py ~
chmod 755 connect.py

# (Optional) Install Python library for controlling GPIO ports
sudo pip install RPi.GPIO

# Let's validate that we can get a temp reading and light up the LED
cd ~/Adafruit_Python_DHT/examples
echo ""
echo "============== Sending test message to iot.eclipse.org:1883 =============="
echo ""
sudo python ~/connect.py
echo ""
echo "=============================================================================="


