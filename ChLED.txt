#!/bin/bash
LED_GPIO=0

if [ $1 == "on" ]
	then
	echo "LED on"
	echo 200>>"/sys/class/leds/led$LED_GPIO/brightness"
elif[ $1 == "off" ]
	then
	echo "LED off"
	echo 0>>"/sys/class/leds/led$LED_GPIO/brightness"
elif[ $1 == "blink" ]
	then
	echo "LED blink"
	echo time>>"/sys/class/leds/led$LED_GPIO/trigger"
fi
#nic nie znaczy kom
#druga zmiana