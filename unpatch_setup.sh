#! /bin/bash

ARCH=$(uname -m)

eval $(grep '^NAME=' *.cygport)
eval $(grep '^VERSION=' *.cygport)
eval $(grep '^RELEASE=' *.cygport)
D=${NAME}-${VERSION}-${RELEASE}.${ARCH}
for d in emacs/{,emacs-X11/,emacs-el/,emacs-debuginfo/,emacs-w32/}
do
	sed -i -e '/^\(curr:\|prev:\|test:\)/d' ${D}/dist/${d}setup.hint
done
