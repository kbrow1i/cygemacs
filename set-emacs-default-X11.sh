#!/bin/bash

for x in emacs emacsclient
do
    /usr/sbin/alternatives --set ${x} /usr/bin/${x}-X11.exe
done
