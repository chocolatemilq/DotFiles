\#! /bin/sh

chosen = $(printf "Performance\nBalanced\nPowersaver\nCancel" | rofi -dmenu -i -theme dracula.rasi)

case  "$chosen" in
	"Performance") powerprofilesctl -s performance ;;
	"Balanced") powerprofilesctl -s balanced ;;
	"Powersaver") powerprofilesctl -s powersaver ;;
	*) exit 1 ;;
esac
