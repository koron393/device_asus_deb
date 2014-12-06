#https://github.com/XMelancholy/android_device_snda_u8500/tree/cm-11.0/patches

apply patches
Just run script ./applypatch.sh. After patches applied, don't run this script again.

generate patches
run repo diff -u project > output.patch command. -u is required to inclued the project path
