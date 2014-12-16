#!/bin/bash 

#we are at the specpr_linux/ root
DIR=$(pwd)

#Basic dependencies
sudo apt-get install byacc flex gfortran -y

#Please make sure you installed ratfor through apt-get / yum / etc.
sudo apt-get install ratfor -y

#Build required software
cd $DIR/src.sspp
make
sudo make install

#copy utilities 
cd $DIR/utility
sudo cp check_env /usr/local/bin
sudo cp specpr    /usr/local/bin
sudo cp sp_spool  /usr/local/bin
sudo cp specprhelp /usr/local/bin
sudo cp specprnt   /usr/local/bin
sudo cp spedit     /usr/local/bin
sudo cp spfind     /usr/local/bin

#link needed stuff
cd /usr/local/bin/
sudo ln specpr dspecpr
sudo ln specpr radtran
sudo ln specpr dradtran

#Compile specpr
#sudo su
cd $DIR/config
source ./cshenv.linux64.gfortran
cd $DIR/src.specpr
make really_clean
make
#exit





