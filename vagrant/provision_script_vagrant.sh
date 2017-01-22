#!/bin/bash
LOGFILE=/home/vagrant/provision_script.log

echo 'Installing miniconda...'
#check to see if the file's already been downloaded (this step could be skiped)
if [ ! -f ~/proj/Miniconda3-latest-Linux-x86_64.sh ]
then
  #if the file hasn't been downlaoded, go get it.
  wget -q https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/proj/Miniconda3-latest-Linux-x86_64.sh  >> $LOGFILE
fi

#execute the install program in batch mode (it won't ask for prompts and won't modify the path)
bash ~/proj/Miniconda3-latest-Linux-x86_64.sh -b >> $LOGFILE

#modify the path in profile
echo 'export PATH=~/miniconda3/bin:${PATH}' >> ~/.profile

#modify the path for the rest of this script
export PATH=~/miniconda3/bin:${PATH}

echo 'Installing Jupyter...'
conda install -y jupyter  >> $LOGFILE

echo 'Installing cvdjango...'
conda create -y -n cvdjango python django psycopg2 >> $LOGFILE

source activate cvdjango

echo 'Installing djangorestframework...'
pip install djangorestframework >> $LOGFILE

source deactivate cvdjango
