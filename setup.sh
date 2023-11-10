#!/bin/bash
echo -n "Please wait..."
sudo apt update -y &>/dev/null
sudo apt install  python3 -y &>/dev/null
# get current user
echo $USER > /tmp/i

# set the flag
sudo mkdir /home/a
sh -c 'md5sum /bin/bash' > /home/a/flag.txt
sudo chown -R $(cat /tmp/i):$(cat /tmp/i) /home/a

# change the shell
sudo usermod $(cat /tmp/i) -s rbash
sudo rm /tmp/i
echo "Cierra la terminal y la vuelves a abrir"
