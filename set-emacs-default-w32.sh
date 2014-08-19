#!/bin/bash
case $0 in
    *w32*) prio=25 ;;
    *X11*) prio=15 ;;
esac
for x in emacs emacsclient
do
    /usr/sbin/alternatives --install /usr/bin/${x} ${x} \
			   /usr/bin/${x}-w32.exe ${prio}
    /usr/sbin/alternatives --auto ${x}
done
