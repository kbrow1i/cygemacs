#! /bin/bash

eval $(grep '^NAME=' *.cygport)
eval $(grep '^VERSION=' *.cygport)
eval $(grep '^RELEASE=' *.cygport)
D=${NAME}-${VERSION}-${RELEASE}
cygport *.cygport fetch prep
cp ../*.postinstall ../*.preremove ${D}/CYGWIN-PATCHES/
cygport *.cygport compile inst pkg
# ./patch_setup.sh
