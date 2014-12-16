#!/bin/bash 

#Please make sure you installed ratfor through apt-get / yum / etc.
sudo apt-get install ratfor -y

#-----------------------
#Build required software
#-----------------------

cd src.sspp
make
sudo make install

#copy utilities 
cd utility
sudo cp check_env /usr/local/bin
sudo cp specpr    /usr/local/bin
sudo cp sp_spool  /usr/local/bin
sudo cp specprhelp /usr/local/bin
sudo cp specprnt   /usr/local/bin
sudo cp spedit     /usr/local/bin
sudo cp spfind     /usr/local/bin

cd /usr/local/bin/
sudo ln specpr dspecpr
sudo ln specpr radtran
sudo ln specpr dradtran





