#!/bin/bash
if [ $# -lt 1 ]; then
	echo "remindme [time] [instruction]"
else
  if [ $1 = "update" ]; then
  	DISPLAY=:0.0 python3 $HOME/.config/remind/remindme.py update
  else
    if [ $# -lt 2 ]; then
    	echo "remindme [time] [instruction]"
    else
      python3 $HOME/.config/remind/remindme.py $@
    fi
  fi
fi
