#!/bin/sh

exit_status=0

cygport emacs.cygport fetch prep compile || exit_status=1

if [ $exit_status -eq 0 ]
then
    cygport emacs.cygport inst pkg || exit_status=1
    cygport emacs.cygport test || echo "Test(s) failed."
fi

tar -cJf artifact.tar.xz emacs-*/dist emacs-*/log

exit $exit_status
