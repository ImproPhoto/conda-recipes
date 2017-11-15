#!/bin/bash

SHORT_OS_STR=$(uname -s)

if [ "${SHORT_OS_STR:0:5}" == "Linux" ]; then
    cd $SRC_DIR
    mkdir build && cd build

    bash ${RECIPE_DIR}/exiv2.sh
    bash ${RECIPE_DIR}/exiftool.sh

    #cmake -LAH ../
    cmake -DCMAKE_INSTALL_PREFIX=$PREFIX \
        -DWITH_QT5=OFF -DWITH_QT4=OFF \
        -DBUILD_POISSON=OFF \
	-DNO_X11=OFF \
        ../
    make install -j4

    cp -R $SRC_DIR/bin $PREFIX/
    cp -R $SRC_DIR/lib $PREFIX/
    cp -R $SRC_DIR/data $PREFIX/
    cp -R $SRC_DIR/include $PREFIX/
    cp -R $SRC_DIR/binaire-aux $PREFIX/
    cp -R $SRC_DIR/scripts $PREFIX/

fi
