# ESP Workshop

## Links

Wenn Du mit der neuen ESP8266/ Arduino-IDE programmieren möchtest (daraus kann man das ESP8266-Modul über die Arduino IDE direkt programmieren), wäre es sinnvoll, wenn Du Dir (am besten kurz vor dem Workshop) eine aktuelle Version vom github herunterlädst: 

* https://github.com/esp8266/arduino 
* http://arduino.cc/en/Main/Software

Ansonsten brauchst Du Deinem Betriebssystem entsprechend noch folgende Software:

* Esplorer: http://esp8266.ru/esplorer/#download

* NodeMCU-Flasher: https://github.com/nodemcu/nodemcu-flasher (nur Windows) alternativ esptool.py: https://github.com/themadinventor/esptool/

* NodeMCU-Firmware: https://github.com/nodemcu/nodemcu-firmware


## Dose bauen

<img src="http://photos1.meetupstatic.com/photos/event/9/4/d/b/highres_436418107.jpeg" width="90%">

<img src="http://photos2.meetupstatic.com/photos/event/9/9/9/2/highres_436419314.jpeg" width="100%">

<img src="http://photos3.meetupstatic.com/photos/event/9/9/9/9/highres_436419321.jpeg" width="100%">



### Bausatz
<img src="http://photos2.meetupstatic.com/photos/event/9/4/c/3/highres_436418083.jpeg" width="90%">


### Pinout
![Pinout](http://s17.postimg.org/jmku0rklb/pin_map.png)

## Inbetriebnahme

* ESP-07 auf Steckbrett
<img src="https://wiki.attraktor.org/images/b/ba/Board_ESP8266.jpg" width="90%">

### OS X Yosemite Treiber

Installiere Treiber von hier:  http://www.wch.cn/downloads.php?name=pro&proid=5

Install  CH340 driver
Run the command in Terminal: 

	sudo nvram boot-args="kext-dev-mode=1"

Reboot

Dann sollte es ein neues Gerät geben:

	ls /dev/cu.*
	/dev/cu.wchusbserial1420

Dann läuft auch ein PL2303 USB UART Adapter TTL-Pegel 3.3V / 5V mit dem Raspberry Pi.

## ESPlorer

Nun kann man sich mit dem ESPlorer verbinden.
* /dev/cu.wchusbserial1420
* 9600 Baud! (oder 115200 Baud)

Dann kommt die Ausgabe:

	PORT OPEN 115200
	
	Communication with MCU...
	Got answer! AutoDetect firmware...
	
	Can't autodetect firmware, because proper answer not received.
	
<img src="http://photos3.meetupstatic.com/photos/event/9/d/9/0/highres_436420336.jpeg" width="90%">


