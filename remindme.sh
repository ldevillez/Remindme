#!/bin/bash
if [ $# -lt 1 ]; then
	echo "remindme [time] [instruction]"
else
  if [ $1 = "update" ]; then
  	python3 /home/westornd/.config/remind/remindme.py update
  else
    if [ $# -lt 2 ]; then
    	echo "remindme [time] [instruction]"
    else
      python3 /home/westornd/.config/remind/remindme.py $@
    fi
  fi
fi
