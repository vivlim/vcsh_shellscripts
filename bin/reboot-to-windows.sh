if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi

pushd /boot/loader
cp loader-towindows.conf loader.conf
popd

reboot
