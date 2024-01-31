# $1 gets the first positional argument passed to the script
choice=$1

if [ -z $choice ] || [ $choice -eq 0 ]; then
	# Monitor
	pactl set-default-sink alsa_output.pci-0000_06_00.1.hdmi-stereo
else
	# Headphone
	pactl set-default-sink alsa_output.pci-0000_06_00.6.analog-stereo
fi

exit
