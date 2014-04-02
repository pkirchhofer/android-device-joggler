###############################
# Joggler System Initialization
###############################
PATH=/system/bin:/system/xbin

# Backlight
chown system:system /sys/class/backlight/openframe-bl/brightness

# Sound System
alsa_ctl init
alsa_amixer set Master 30

return 0

