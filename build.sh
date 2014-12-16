#!/bin/bash 

#Please make sure you installed ratfor through apt-get / yum / etc.
sudo apt-get install ratfor -y

#-----------------------
#Build required software
#-----------------------

cd src.sspp
make
sudo make install


