#!/bin/bash

curDir=$(pwd)
mkdir tmp.exiv2 && cd tmp.exiv2
curl -L -O "http://www.exiv2.org/builds/exiv2-0.26-linux.tar.gz"
tar -xf exiv2-0.26-linux.tar.gz
cd dist/linux
for fname in $(ls);do cp -R $fname $PREFIX/;done
cd $curDir
