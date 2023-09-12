#!/bin/sh

echo "Under Ubuntu and/or MATE, make sure that current selected keyboard layout is not 'en',
or Viber app may fail to start. Just make sure that another layout is current."

QT_FONT_DPI=128 /opt/viber/Viber
