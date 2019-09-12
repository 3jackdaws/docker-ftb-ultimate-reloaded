#!/bin/bash

if [ ! -e /ftb/ServerStart.sh ]; then
    mv pack.zip /ftb/pack.zip
    cd /ftb
    unzip pack.zip
    rm pack.zip 
    echo "eula=true" >> eula.txt
    chmod 700 ServerStart.sh
fi

cd /ftb

screen -dmS mc bash ServerStart.sh
screen -x 
