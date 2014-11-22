#!/bin/bash
# ~/Documents/ayadn_shell.sh
# ( Adapted from: http://code.activestate.com/recipes/577437-basic-linux-menu/ )

# Prerequisites:
# 1. Ruby and Tmux and Tmuxinator must be installed. It's non-trivial but brings its own, peculiar, rewards.
# 2. An understanding that I'm new to Linux - I'm pretty sure this code won't break anything but be careful if you wish to modify it.
# 3. An understanding that, because I'm new to Linux I've created about 13 documents thus far. All in ~/Documents - easy.

# IMPORTANT - this file lets the user refresh Tmux but fails to exit correctly.
# See the commented lines below.

# Create ayadn_refresh.txt with default 'Refresh' contents.
printf 'Refresh' > ~/Documents/ayadn_refresh.txt

clear
CHOICE=
until [ "$CHOICE" = "x" ];
  do
    echo ""
    echo "AYADN MENU"
    echo ""
    echo "1 - ayadn write"
    echo "2 - ayadn reply"
    echo "3 - ayadn pm [@username]"
    echo "4 - ayadn send [@username/channel/alias]"
    echo "5 - ayadn repost [post number]"
    echo ""
    echo "6 - ayadn convo [post number]"
    echo "7 - ayadn channels"
    echo ""
    echo "r - Refresh all"
    echo "n - Next window"
    echo "x - Exit session"
    echo ""
    echo -n "Enter Selection:"
    read CHOICE
    echo ""
    case $CHOICE
      in
        1 ) clear
            echo "Compose a multiline post:"
            echo ""
            ayadn write;;
        2 ) clear
            echo "Compose a reply:"
            echo ""
            echo "Reply [post number]?"
            read post
            ayadn reply $post;;
        3 ) clear
            echo "Compose a PM:"
            echo ""
            echo "PM [@username]"
            read channel
            ayadn pm $channel;;
        4 ) clear
            echo "Send a message to a channel:"
            echo ""
            echo "Send [@username/channel/alias]"
            read channel
            ayadn send $channel;;
        5 ) clear
            echo "Repost:"
            echo ""
            echo "Post [post]?"
            read post
            ayadn repost $post;;
        6 ) clear
            echo "Display a conversation:"
            echo ""
            echo "Conversation [post number]?"
            read post
            ayadn convo $post
            read -p "Press [Enter] to return to menu.";;
        7 ) clear
            echo "Display channels"
            echo ""
            ayadn channels;;
        n ) clear
            tmux next-window;;
        r ) clear
            printf 'Refresh' > ~/Documents/ayadn_refresh.txt
            tmux kill-session;;
        x ) clear
            printf 'Exit' > ~/Documents/ayadn_refresh.txt
            tmux kill-server;;
        * ) echo "Please enter 1,2,3,4,5,6,7,n,r or x. Thanks!"
     esac
  done
