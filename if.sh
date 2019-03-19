#!/bin/bash

apt-get update
apt-get install python-pip
apt-get install git
git clone -b manyuser https://github.com/shadowsocksr-backup/shadowsocksr.git
cd ~/shadowsocksr
bash initcfg.sh
python mujson_mgr.py -e -u aaa -p 28593 -k abcd1234 -m aes-128-ctr -O auth_aes128_md5 -o plain
