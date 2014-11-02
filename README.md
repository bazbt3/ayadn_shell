# A Linux Terminal window command line menu for Ayadn:

Treat as very alpha. Actually, treat it as a bit rubbish. Better. (I don't have a Mac but it *may* work on one.)

![](http://bt3.com/images/f/fc/Ayadn_shell.png)

**This is NOT a clone of Ayadn.** I'm messing about with stuff *related* to Ayadn - the App.net command line client by @ericdke. That's all. If you want see the thing itself, go to the excellent https://github.com/ericdke/na pages. If you want to read about *my* stuff, read on!

## Prerequisites:

1. Linux (in my case, Ubuntu 14.04 LTS),
2. Ruby and Rubygems (in my case installed using [RBENV](http://rbenv.org/)),
3. Install Tmux - http://tmux.sourceforge.net/ - and the things it depends on - [libevent](http://www.monkey.org/~provos/libevent/) and [ncurses](http://invisible-island.net/ncurses/),
4. Install [Tmuxinator](https://github.com/tmuxinator/tmuxinator) - `gem install tmuxinator`,
5. Install [Ayadn](https://github.com/ericdke/na) - `gem install ayadn`.

## Next steps:

1. Copy the `ayadn.yml` file contents from here into a new `~/.tmuxinator/ayadn.yml` file.
2. Copy the `ayadn_shell.sh` from here into a new `~/Documents/ayadn_shell.sh` - noting that it must be able to be executed (see the file's properties and change permissions to 'allow executing file as program'.)
3. If you haven't previously used Ayadn, type `ayadn help authorize` to see what's necessary to authorise the app to authenticate and interact with the App.net servers.

**Important** - `~/Documents` is used throughout the 2 files above simply because I'm very new to Linux, consequently have few *actual* documents on my test system. There will be a more elegant method but I'd rather get things moving before making things pretty.

**Even more important** - I've used bazbt3 (my App.net username) within `ayadn.yml`. Though your account will authenticate you, you might not want to see, e.g. my mentions in your timelines!

## To run Ayadn using the menu system:

* It's best if the Terminal window is made fullscreen and with a fairly small font size.
* Type `$ mux ayadn` to start the wonder off. (Linux novices: don't type the `$` - it's the end of the 'prompt'.)

(It's a shortened form of the Tmuxinator command to open the `ayadn.yml` layout from the `~/.tmuxinator` folder.)

## Interpreting the windows:

* A green Tmux status bar at the bottom of the screen shows the window names and indicates which is currently active.
* The window panes are split variously dependent on function:

   Top left at all times is the menu.

   Main: Bottom-left = mentions | Top-right = unread PMs or channel posts | Bottom-right = interactions        

   Mentions: Right = mentions

   Messages: Right = unread messages/channel posts

   Timeline: Right = auto-scrolling timeline

   Multipurpose: Right = command line for the myriad of Ayadn commands not catered for in the menu. (Type `ayadn` for a complete list.)

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

* 'next window' selects the next window from those available (see the Tmux status bar at the bottom of the screen.)
* 'Exit session' provides no warning and closes all active panes and windows - but **only** within the current Terminal window.

## Resources:

* You'll need help to get the best out of Tmux. A great source of information is the Ubuntu version of the [man pages](http://manpages.ubuntu.com/manpages/precise/en/man1/tmux.1.html) - better-suited to my reading style than the [official man pages.](http://www.openbsd.org/cgi-bin/man.cgi/OpenBSD-current/man1/tmux.1?query=tmux&sec=1)

## Disclaimer:

It might appear as if I know what I'm doing. Maybe yes, maybe no.
