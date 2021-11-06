#!/bin/bash
echo "[i] We will now install DDOS to your bin path..."
if [ -d "/usr/share/DDOS" ] ; then
    echo "[i] Found an old version of DDOS, Proceeding to update..."
    echo "[i] Backing up old verison."
    if [ -d "/usr/share/DDOS/Backup" ] ; then
        sudo mv /usr/share/DDOS/Backup ./Backup
    else
        mkdir ./Backup
    fi
    name="./Backup/DDOS"
    if [ -d $name ] ; then
        i=0
        while [ -d "$name.bak$i" ] ; do
            let i++
        done
            name="$name.bak$i"
    fi
    sudo mv /usr/share/DDOS $name
    mv ./Backup ./DDOS/
    sudo cp -ar ./DDOS /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making DDOS executable..."
    sudo mv /usr/share/DDOS/main.py /usr/share/Raven-Storm/rst
    sudo chmod +x /usr/share/DDOS/rst
    sudo ln -s /usr/share/DDOS/rst /usr/bin/rst || echo "[i] Link already seems to exist."
else
    sudo cp -ar ./DDOS /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making DDOS executable..."
    sudo mv /usr/share/DDOS/main.py /usr/share/Raven-Storm/rst
    sudo chmod +x /usr/share/DDOS/rst
    sudo ln -s /usr/share/DDOS/rst /usr/bin/rst || echo "[i] Link already seems to exist."
fi

echo "[i] You can delete the DDOS folder now."
echo "----------------------------------------"
echo "[i] Run 'sudo rst' to start DDOS."
echo "----------------------------------------"
exit 0
