# BASHScriptCollection
Scripts written for various purposes
## StartStop.sh
Use this script to create a pause/resume button for any process by __sending STOP or CONT signal__ to active window process. Script file can be bonded with any method to __keyboard shortcut__ and can be used to pause any application including games cannot pause normally. Script __automatically detects state of process__ and sends signals according to its state, it also changes active window title to " \*\*\* Stopped \*\*\* " when paused and restores original title after it resumes.<br>
To use;
```bash
sudo sh -c "apt install xdotool || dnf install xdotool"
chmod +x StartStop.sh
```
Then bind the script to any keyboard shortcut.
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
