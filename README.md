### This is NOT a clone of Ayadn!

I'm messing about with stuff related to Ayadn - the App.net command line client. That's all. If you want see the thing itself, go to the excellent https://github.com/ericdke/na pages. If you want to read about *my* stuff, read on!

# A Linux Terminal window command line menu for Ayadn:

Treat as very alpha. Actually, treat it as a bit rubbish. Better.

(I don't have a Mac but it *may* work on one.)

## Prerequisites:

1. Linux (in my case, Ubuntu 14.04 LTS),
2. Ruby and Rubygems (in my case installed using [RBENV](http://rbenv.org/)),
3. Install Tmux - http://tmux.sourceforge.net/ - and the things it depends on - [libevent](http://www.monkey.org/~provos/libevent/) and [ncurses](http://invisible-island.net/ncurses/),
4. Install [Tmuxinator](https://github.com/tmuxinator/tmuxinator) - `gem install tmuxinator`,
5. Install [Ayadn](https://github.com/ericdke/na) - `gem install ayadn`.

## Next steps:

1. If you haven't already used Ayadn, type `ayadn help authorize` to see what's necessary to authorise the app to authenticate and interact with the App.net servers.

2. Copy the `ayadn.yml` file contents from here into a new `~/.tmuxinator/ayadn.yml` file.
3. Copy the `ayadn_shell.sh` from here into a new `~/Documents/ayadn_shell.sh` - noting that it must be able to be executed.

**Important** - `~/Documents` is used throughout simply because I'm very new to Linux, consequently have few *actual* documents on my test system.

## To run Ayadn using the menu system:

1. It's best if the Terminal window is made fullscreen and with a fairly small font size.
2. Type `$ mux ayadn` to start the wonder off.

(It's a shortened form of the Tmuxinator command to open the `ayadn.yml` layout from the `~/.tmuxinator` folder.)

## Interpreting the windows:

1. A green Tmux status bar at the bottom of the screen shows the window names and indicates which is currently active.
2. The window panes are split variously dependent on function:
   Top left at all times is the menu.
   Main:
     Bottom-left  = mentions
     Top-right    = unread PMs or channel posts
     Bottom-right = interactions        
   Mentions:
     Right        = mentions
   Messages:
     Right        = unread messages/channel posts
   Timeline:
     Right        = auto-scrolling timeline
   Multipurpose:
     Right        = for the myriad of Ayadn commands not catered for in the menu.

## The menu:

Finally!

The menu is pretty simple:

AYADN MENU
   
1 - ayadn write

2 - ayadn reply

3 - ayadn pm [channel/alias]

4 - ayadn convo [post number]

5 - ayadn repost [post number]

9 - next window

0 - Exit session

'Exit session' provides no warning and closes all active panes and windows - but **only** within the current Terminal window.

### Disclaimer:

It might appear as if I know what I'm doing. Maybe yes, maybe no.
