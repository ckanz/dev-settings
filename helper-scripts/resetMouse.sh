echo "Resetting the mouse driver. Mouse might be unresponsive for a few seconds."
sudo modprobe -r psmouse
sudo modprobe psmouse
echo "Mouse driver restarted. Should be working in a few seconds."
