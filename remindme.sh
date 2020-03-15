#!/bin/bash
if [ $# -lt 1 ]; then
	echo "remindme [time] [instruction]"
else
  if [ $1 = "update" ]; then
    export DISPLAY=:0
    export XDG_CURRENT_DESKTOP=i3
    export DESKTOP_SESSION=i3
    export XDG_SESSION_DESKTOP=i3
    export GDMSESSION=i3
    env > $HOME/tmp.txt
  	python3 $HOME/Hack/remind/remindme.py update
  else
    if [ $# -lt 2 ]; then
    	echo "remindme [time] [instruction]"
    else
      python3 $HOME/Hack/remind/remindme.py $@
    fi
  fi
fi
