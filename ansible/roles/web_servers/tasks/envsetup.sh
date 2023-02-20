#!/bin/bash

if [ -d "venv_django" ]
then
 echo "Python virtual env postoji"
else
    
    python3 -m venv venv_django
fi

echo $PWD
source venv_django/bin/activate

pip3 install -r requirements.txt

if [ -d "logs" ]
then
 echo "Log folder postoji"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
echo "envsetup finishes"

