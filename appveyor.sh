#!/bin/sh
set -e

echo fetching...
cygport emacs.cygport fetch

echo prepping...
cygport emacs.cygport prep

echo compiling...
cygport emacs.cygport compile

echo installing...
cygport emacs.cygport inst

echo packaging...
cygport emacs.cygport pkg

echo testing...
cygport emacs.cygport test

tar -cJf artifact.tar.xz emacs-*/dist emacs-*/log
