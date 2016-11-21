#!/bin/bash
kill $(ps aux | grep '[r]unLurms.[b]ash' | awk '{print $2}')
kill $(ps aux | grep '[me]eteor' | awk '{print $2}')
kill $(ps aux | grep '[me]eteor' | awk '{print $2}')
kill $(ps aux | grep '[me]eteor' | awk '{print $2}')
rm -rf solid-waddle
git clone https://github.com/chgibb/solid-waddle
rm -f nohup.out
nohup ./runLurms.bash &
