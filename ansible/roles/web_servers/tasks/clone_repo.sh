#!/bin/bash

if [ -d "django-jenkins" ]
then
    cd django-jenkins
    git pull
else
    git clone https://github.com/pavle0903/django-jenkins.git
fi
