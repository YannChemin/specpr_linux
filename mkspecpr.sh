#!/bin/csh
set path = ( $path /home/yann/dev/specpr/src.specpr )
cd ~/dev/specpr/config
source ./cshenv.linux64.gfortran
cd ~/dev/specpr/src.specpr
make really_clean
make
sudo csh set path = ( $path /home/yann/dev/specpr/src.specpr )
sudo csh source ./cshenv.linux64.gfortran
sudo make install


#Still manual install...
#sudo cp -p dspecpr $(SP_LOCAL)/bin/pspecpr
#sudo chmod 755 $(SP_LOCAL)/bin/pspecpr
#sudo cp -p dspecpr.sh $(SP_LOCAL)/bin/dspecpr
#sudo chmod 755 $(SP_LOCAL)/bin/dspecpr
#sudo cp -p specpr.sh $(SP_LOCAL)/bin/specpr

#Make the help helpful
#sudo cp -p utility/specprhelp /usr/local/bin/specprhelp
#sudo chmod 755 /usr/local/bin/specprhelp
