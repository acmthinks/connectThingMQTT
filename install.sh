#!/bin/bash

# Installing Paho Python client for MQTT
cd ~
sudo pip install paho-mqtt
git clone http://git.eclipse.org/gitroot/paho/org.eclipse.paho.mqtt.python.git
cd org.eclipse.paho.mqtt.python
sudo python setup.py install

# Setting scripts as executable
chmod 755 ~/connectThingMQTT/*.py

# Let's validate that we can get a temp reading and light up the LED
echo ""
echo "============== Sending test message to iot.eclipse.org:1883 =============="
echo ""
sudo python ~/connectThingMQTT/publish.py
echo ""
echo "=============================================================================="
echo "To subscribe to the MQTT broker, in a seperate ssh window, run: "
echo "    sudo python ~/connectThingMQTT/subscribe.py"
echo ""
echo "Then in seperate ssh window run: "
echo "    sudo python ~/connectThingMQTT/publish.py"
