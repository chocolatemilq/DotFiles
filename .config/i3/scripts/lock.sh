#!/bin/sh
set -e
xset s off dpms 0 2 0
i3lock --color=282A36 --ignore-empty-password --show-failed-attempts --nofork
xset s off -dpms
