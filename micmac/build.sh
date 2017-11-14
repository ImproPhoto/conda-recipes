#!/bin/bash

SHORT_OS_STR=$(uname -s)

if [ "${SHORT_OS_STR:0:5}" == "Linux" ]; then
    curl -L -O "https://github.com/micmacIGN/micmac/releases/download/$PKG_VERSION/micmac_linux.tgz"
    test `openssl sha256 micmac_linux.tgz | awk '{print $2}'` = "2413e2532159c1dba6f5b98d755b47f6d44dd85d2a76d1561e8f0e0639ede922"
    tar -zxf micmac_linux.tgz
    cp -R bin binaire-aux data include $PREFIX/
fi
