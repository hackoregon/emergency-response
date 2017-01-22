#!/bin/bash

PROJ="/home/vagrant/proj"
BIN="/home/vagrant/proj/postgresql/scripts/bin"
SQL="/home/vagrant/proj/postgresql/scripts/sql"

# fix script files
dos2unix $PROJ/provision_script_vagrant.sh
find $BIN/ -type f -exec dos2unix {} \;

# fix sql files
find $SQL/ -type f -exec dos2unix {} \;
