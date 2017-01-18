#!/bin/bash

# /etc/ld.so.conf
echo -e '/Zanthus/Zeus/lib' > /etc/ld.so.conf.d/libs32_zanthus.conf

# mkdir
mkdir -p /usr/src/libs_zanthus
mkdir -p /Zanthus/Zeus/lib

# wget 64 (kern D/Z - 64/32)
wget -c ftp://ftp.zanthus.com.br:2142/pub/Zeus_Frente_de_Loja/_Complementares/so_r64/* -P /usr/src/libs_zanthus
wget -c ftp://ftp.zanthus.com.br:2142/pub/Zeus_Frente_de_Loja/_Complementares/kernz/2_4/*.so -P /usr/src/libs_zanthus
wget -c ftp://ftp.zanthus.com.br:2142/pub/Zeus_Frente_de_Loja/_Complementares/KernD/v2_1/*.so -P /usr/src/libs_zanthus

# wget 32
wget -c ftp://ftp.zanthus.com.br:2142/pub/Zeus_Frente_de_Loja/_Complementares/so/* -P /Zanthus/Zeus/lib

# libs locais 32

cp -rfv libcrypto* /Zanthus/Zeus/lib
cp -rfv libssl* /Zanthus/Zeus/lib


#
ldconfig
