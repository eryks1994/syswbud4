#!/bin/bash
LED_GPIO=0

if [ $1 == "on" ]; then
	echo "LED on"
	setLED 1 #echo 200>>"/sys/class/leds/led$LED_GPIO/brightness"
fi
if[ $1 == "off" ]; then
	echo "LED off"
	setLED 0 #echo 0>>"/sys/class/leds/led$LED_GPIO/brightness"
fi
if[ $1 == "blink" ]; then
	echo "LED blink"
	#echo time>>"/sys/class/leds/led$LED_GPIO/trigger"
fi
#nic nie znaczy kom
#druga zmiana