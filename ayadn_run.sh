#!/bin/bash
# ~/Documents/ayadn_run.sh

# IMPORTANT - this file lets the user refresh Tmux but fails to exit correctly.
# See the commented lines below.

clear
RUNAYADN=1
while [ "$RUNAYADN" = 1 ]
  do
    mux ayadn
    RUNAYADN=1
# RUNAYADN=1 substituted for the next line
# I can't get the REFRESH variable to 'export' from ayadn_shell
#    RUNAYADN=$REFRESH
  done
echo "Press a key"
read KEYPRESS
echo "Done."
exit
