# audio-output-switcher
A bash script that takes in an argument that switches the audio driver in Linux.

### Why make this?
Had a problem with switching between my Monitor speakers and my Headphones. Unlike Windows, where Win+G opens the audio manager, I had to go in the audio settings of my Linux (POP_OS) and then change the driver (too tedious). I finally had the time to automate this and assigned a custom script to custom keyboard shortcut that POP_OS gives access to (thankfully). As POP_OS is based on Ubuntu, Ubuntu might have the same custom keyboard shortcuts panel (haven't tested there).

## How do I use this to suit my needs?
- Run `pactl list sinks | grep Name` in terminal. This will get the name values of your audio drivers which you will use in the script later.
- Identify what driver corresponds to which Audio Output (speakers/headphones/integrated).
- Clone the repo, edit the script to change lines where these commands are written:
```
pactl set-default-sink alsa_output.pci-0000_06_00.1.hdmi-stereo
```
*The `pactl set-default-sink <driver_name>` sets the audio driver we want to assign.*

*Here the `alsa_output.pci-0000_06_00.1.hdmi-stereo` is my Monitor's integrated speaker, you will see a similar name when you run the command in the first step.*

- Make sure the script has an execution permission, or execute this command
```
chmod -x switch.sh
```
- Open the custom keyboard shortcuts panel from the Keyboard Shortcuts section in the Settings of your OS (mine is a Debian based, more closely Ubuntu based). Other systems may have a different approach.
- Paste this execution command
```
sh ./Projects/audio-driver-switcher/switch.sh 0
```
*Use the positional argument according to your needs. For me its 0 for Monitor and 1 for Headphones. Both have been assigned to different shortcuts.*
