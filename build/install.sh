#!/bin/bash
echo "please make sure that you install libtpms"
cd ../
sudo apt-get install  libtasn1-3-dev tpm-tools expect socat libfuse-dev -y
sudo apt-get install libglib2.0-dev -y
sudo apt-get install gnutls-bin gawk
./bootstrap.sh

./configure --prefix=/usr --with-openssl
make
make install

cp /usr/etc/swtpm_setup.conf /etc/


