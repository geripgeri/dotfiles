#!/bin/bash

# Start some nice programs
if [ -d ~/.xinitrc.d ] ; then
    for f in ~/.xinitrc.d/?*.sh ; do
        if [[ -x "$f" ]]
        then
            . "$f";
        fi
    done
fi

exec awesome 
