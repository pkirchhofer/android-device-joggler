PATH=/system/bin:/system/xbin

alsa_amixer set Master on
alsa_amixer set Master 100
alsa_amixer set Capture 100
alsa_amixer set Capture cap
alsa_amixer set PCM 100 unmute
alsa_amixer set 'Mic Boost' 2

# import cmdline variables
for c in `cat /proc/cmdline`; do
	case $c in
		*=*)
			eval $c
			;;
	esac
done

[ -z "$SDCARD" -o "$SDCARD" = "internal" ] && start sdcard

# change brightness file permission for liblights
brfile=$(getprop backlight.brightness_file)
chown 1000.1000 ${brfile:-/sys/class/backlight/acpi_video0/brightness}

# disable cursor blinking
[ "$(getprop system_init.startsurfaceflinger)" = "0" ] && echo -e '\033[?17;0;0c' > /dev/tty0

