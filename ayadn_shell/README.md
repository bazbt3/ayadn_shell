# A menu for Ayadn

Treat as very alpha. Actually, treat it as a bit rubbish. Better.

## Prerequisites:

1. Linux (in my case, Ubuntu 14.04 LTS),
2. Ruby and Rubygems (in my case installed using [RBENV](http://rbenv.org/)),
3. Install Tmux - http://tmux.sourceforge.net/ - and the things it depends on - [libevent](http://www.monkey.org/~provos/libevent/) and [ncurses](http://invisible-island.net/ncurses/),
4. Install [Tmuxinator](https://github.com/tmuxinator/tmuxinator) - `gem install tmuxinator`,
5. Install [Ayadn](https://github.com/ericdke/na) - `gem install ayadn`.

## Next steps:

1. Copy the `ayadn.yml` file contents from here into a new `~/.tmuxinator/ayadn.yml` file.
2. Copy the `ayadn_shell.sh` from here into a new `~/Documents/ayadn_shell.sh` - noting that it must be able to be executed.

**Important** - `~/Documents` is used simply because I'm very new to Linux, consequently have few *actual* documents on my test system.

## To run Ayadn using the menu system:

`$ mux ayadn`

(A shortened form of the Tmuxinator command to open the `ayadn.yml` layout from the `~/.tmuxinator` folder.)
