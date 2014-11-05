## To run Ayadn using the menu system:

1. Open a Terminal window - best made fullscreen and with a fairly small font size.
2. Type `$ mux ayadn` to start the wonder off. (Linux novices: don't type the `$` - it's the end of the 'prompt'.)

## Interpreting the windows:

A green status bar at the bottom of the screen shows the window names and indicates which is currently active.

 The window panes are split variously dependent on function:

* Top left at all times is the menu.

* Main:   
  Bottom-left = mentions.   
  Top-right = unread PMs or channel posts.   
  Bottom-right = interactions.

* Mentions:   
  Right = mentions.

* Messages:   
  Right = unread messages/channel posts.

* Timeline:   
  Right = auto-scrolling timeline.

* Multipurpose:   
  Right = a clear command line to allow the user to use the myriad of Ayadn commands not catered for in the menu.   
  (Type `ayadn` for a complete list.)

## The menu:

Finally! The menu is pretty simple:

```
AYADN MENU
1 - ayadn write
2 - ayadn reply
3 - ayadn pm [channel/alias]
4 - ayadn convo [post number]
5 - ayadn repost [post number]

9 - next window

0 - Exit session
```

* '9 - next window' selects the next window from those available (see the Tmux status bar at the bottom of the screen.)
* '0 - Exit session' provides no warning and closes all active panes and windows - but **only** within the current Terminal window.