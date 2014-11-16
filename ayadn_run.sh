#!/bin/bash
# ~/Documents/ayadn_run.sh

# IMPORTANT - this file lets the user refresh Tmux but fails to exit correctly.
# See the commented lines below.

RUNAYADN=1
clear
while [ "$RUNAYADN" = 1 ]
  do
    mux ayadn
    if grep -q "Refresh" ~/Documents/ayadn_refresh.txt; then
      RUNAYADN=1
    fi
    if grep -q "Exit" ~/Documents/ayadn_refresh.txt; then
      RUNAYADN=0
    fi
  done
clear
echo ""
echo "Thankyou for using ayadn_shell."
echo "Until the next time..."
echo ""
exit
