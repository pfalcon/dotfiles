#!/bin/sh

# Make stupid snapd desktop notifications appear no more than once a week.

sudo snap set system refresh.timer=sun,10:00
