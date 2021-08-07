apt-get update
apt-get install tzdata -y
apt-get install python3 python3-pip python3-cryptography less libxext6 libxrender1 libxtst6 libfreetype6 libxi6 -y
python3 -m pip install -U pip
export PATH=$PATH:/root/.local/bin
pip3 install projector-installer --user

. ~/.profile

/root/.local/bin/projector install -y
