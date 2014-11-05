# What's needed to get this thing to run?

## Prerequisites:
(Where not already installed.)

1. Linux (in my case, Ubuntu 14.04 LTS),
2. cURL (in response to RVM's failure-to-install),
3. Ruby & Rubygems - in my case installed using [RBENV](http://rbenv.org/) (after both the system Ruby *and* RVM's version failed to allow Ayadn to run.)
4. [libevent](http://www.monkey.org/~provos/libevent/),
5. [ncurses](http://invisible-island.net/ncurses/),
6. [Tmux](http://tmux.sourceforge.net/) (the preceding 2 are necessary for this to work),
7. [Tmuxinator](https://github.com/tmuxinator/tmuxinator) - `gem install tmuxinator`,
8. [Ayadn](https://github.com/ericdke/na) - `gem install ayadn`.

Some of the steps above were undertaken as a direct result of reading the messages following failures-to-install - and actioned at the command line. Apologies for the sketchiness of these instructions, @ericdke's help installing Ayadn was invaluable for this Linux novice.

## Next steps:

1. Copy the `ayadn.yml` file contents from here, creating a new `~/.tmuxinator/ayadn.yml` file.

2. Copy the `ayadn_shell.sh` from here, creating a new `~/Documents/ayadn_shell.sh` - noting that it must be able to be executed (see the file's properties and change permissions to 'allow executing file as program'.)

  If the menu fails to run it might be useful to know I currently run all Terminal window profiles with 'Run command as a login shell' active.

3. If you haven't previously used Ayadn, type `ayadn help authorize` to see what's necessary to authorise the app to authenticate and interact with the App.net servers. At the very least this will check that Ayadn is installed correctly.

**Important** - `~/Documents` is used throughout the 2 files above simply because I'm very new to Linux, consequently have few *actual* documents on my test system. There will be a more elegant method but I'd rather get things moving before making things pretty.

**Even more important** - I've used bazbt3 (my App.net username) within `ayadn.yml`. Though your account will authenticate you, you might not want to see, e.g. my mentions in your timelines! **Please replace my username with your own!**

## To run Ayadn using the menu system:

1. Open a Terminal window - best made fullscreen and with a fairly small font size.
2. Type `$ mux ayadn` to start the wonder off.   
  (Linux novices: don't type the `$` - it's the end of the 'prompt'.)