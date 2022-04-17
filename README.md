# BASHScriptCollection
Scripts written for various purposes
## TouchpadToggle.sh
This script toggles enabled/disabled state of touchpad device in xinput.<br>
Can be used as;
```bash
bash TouchpadToggle.sh
```
## VoiceChanger.sh
This script changes and reflects sound to loop device.<br>
To use;
```bash
sudo apt-get install sox libsox-fmt-pulse pavucontrol
chmod +x VoiceChanger.sh
./VoiceChanger.sh -start
./VoiceChanger.sh -anonym
```
To stop;
```bash
./VoiceChanger.sh -stop
```
To help;
```bash
./VoiceChanger.sh --help
```
## XFCEAutoHide.sh
This script enables or disables auto panel hide feature on XFCE4.<br>
To use;
```bash
bash XFCEAutoHide.sh
```
## GentoCHROOT.sh
This script mounts Gentoo Linux partition and changes root for it.<br>
To use;
```bash
bash GentooCHROOT.sh
```
It needs root privileges
