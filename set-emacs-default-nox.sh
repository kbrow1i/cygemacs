#!/bin/bash
case $0 in
    *nox*) toolkit=nox ;;
    *w32*) toolkit=w32 ;;
    *X11*) toolkit=X11 ;;
    *lucid*) toolkit=lucid ;;
esac
for x in emacs emacsclient
do
    /usr/sbin/alternatives --install /usr/bin/${x} ${x} \
			   /usr/bin/${x}-nox.exe 10
    [ -e /usr/bin/${x}-w32.exe ] && \
	/usr/sbin/alternatives --install /usr/bin/${x} ${x} \
			       /usr/bin/${x}-w32.exe 20
    [ -e /usr/bin/${x}-X11.exe ] && \
	/usr/sbin/alternatives --install /usr/bin/${x} ${x} \
			       /usr/bin/${x}-X11.exe 30
    [ -e /usr/bin/${x}-lucid.exe ] && \
	/usr/sbin/alternatives --install /usr/bin/${x} ${x} \
			       /usr/bin/${x}-lucid.exe 40
    /usr/sbin/alternatives --install /usr/bin/${x} ${x} \
			   /usr/bin/${x}-${toolkit}.exe 100
    /usr/sbin/alternatives --auto ${x}
done
