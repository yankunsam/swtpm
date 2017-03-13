#!/bin/bash
echo "please make sure that you install libtpms"
cd ./swtpm
./bootstrap.sh
sudo apt-get install libglib2.0-dev libtasn1-3-dev tpm-tools expect socat libfuse-dev 

./configure --prefix=/usr --with-openssl
make
make install

cp /usr/etc/swtpm_setup.conf /etc/


