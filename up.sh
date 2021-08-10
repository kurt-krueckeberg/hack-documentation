#!/usr/bin/env bash
rm -rf build/html
rm ./hdoc.tar.gz
./make.sh
cd build/html
sed -i -e 's/max-width:\s800px;/max-width: 65%;/' _static/basic.css
tar -czvf ~/hdoc/hdoc.tar.gz ./*
cd ../..
sshpass -pkk0457 scp ./hdoc.tar.gz kurt@23.254.165.183:~/
sshpass -pkk0457 ssh kurt@23.254.165.183 
