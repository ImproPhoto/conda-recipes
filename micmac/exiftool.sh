#!/bin/bash

curDir=$(pwd)
mkdir tmp.exiftool && cd tmp.exiftool
curl -L -O "https://www.sno.phy.queensu.ca/~phil/exiftool/Image-ExifTool-10.66.tar.gz"
gzip -dc Image-ExifTool-10.66.tar.gz | tar -xf -
cd Image-ExifTool-10.66
perl Makefile.PL
make test
make install
cd $curDir
