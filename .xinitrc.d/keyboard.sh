#!/bin/bash

setxkbmap -layout us -variant altgr-intl &
numlockx &
xbindkeys  &
xmodmap ~/.Xmodmap &
