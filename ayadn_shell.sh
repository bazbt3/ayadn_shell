#!/bin/bash
# ~/Documents/ayadn_shell.sh
# ( Adapted from: http://code.activestate.com/recipes/577437-basic-linux-menu/ )

# Prerequisites:
# 1. Ruby and Tmux and Tmuxinator must be installed. It's non-trivial but brings its own, peculiar, rewards.
# 2. An understanding that I'm new to Linux - I'm pretty sure this code won't break anything but be careful if you wish to modify it.
# 3. An understanding that, because I'm new to Linux I've created about 13 documents thus far. All in ~/Documents - easy.

clear
choice=
until [ "$choice" = "0" ];
  do
    echo ""
    echo "AYADN MENU"
    echo ""
    echo "1 - ayadn write"
    echo "2 - ayadn reply"
    echo "3 - ayadn pm [channel/alias]"
    echo "4 - ayadn convo [post number]"
    echo "5 - ayadn repost [post number]"
    echo ""
    echo "9 - next window"
    echo ""
    echo "0 - Exit session"
    echo ""
    echo -n "Enter Selection:"
    read choice
    echo ""
    case $choice
      in
        1 ) clear
            echo "Compose a multiline post:"
            echo "-------------------------"
            ayadn write;;
        2 ) clear
            echo "Compose a reply:"
            echo "-------------"
            echo "Reply [post number]?"
            read post
            ayadn reply $post;;
        3 ) clear
            echo "Compose a PM:"
            echo "-------------"
            echo "PM [channel number/alias?]"
            read channel
            ayadn pm $channel;;
        4 ) clear
            echo "Display a conversation:"
            echo "-----------------------"
            echo "Conversation [post number]?"
            read post
            ayadn convo $post
            read -p "Press [Enter] to return to menu.";;
        5 ) clear
            echo "Repost:"
            echo "-----------------------"
            echo "Post [post]?"
            read post
            ayadn repost $post;;
        9 ) clear
            tmux next-window;;
        0 ) tmux kill-session
            exit;;
        * ) echo "Please enter 1,2,3,4,9 or 0."
     esac
     echo ""
  done
