## Background

Right now this repository is very much a work in progress. The majority of people who get this far will likely have programming abilities way beyond mine. The 'good stuff' is related to the Ayadn client and the windowing system - not my shell script. Creating programs and arranging Linux windows is hard.

[Tmux](http://tmux.sourceforge.net/) is the foundation on which this is built. [Tmuxinator](https://github.com/tmuxinator/tmuxinator) makes it easier to use Tmux. Tmuxinator may help you use [Ayadn](https://github.com/ericdke/na) (and other command line stuff) more effectively.

## A tiny bit technical

I've added the full folder paths below simply to highlight my Linux inexperience. There will be more elegant ways to do all this, I've just not figured it out yet.

The 'ayadn_shell' lives in a Terminal window modified by running `mux ayadn`. It opens Tmuxinator which configures itself using `~/.tmuxinator/ayadn.yml` (which must be placed within the folder stated.) It then opens Tmux and sets up 5 windows and a varying number of panes within each. There's a command line item run within each pane.

`~/Documents/ayadn_shell.sh` - the menu system shell script - executes Ayadn or Tmux commands. Though the only common item across the windows is the menu system the code can be amended to execute any command line command. Now, `~/Documents` is probably not the best place to store this file but it works. If you want to run it from somewhere else, please update the links in `ayadn.yml` accordingly.

## Resources:

* You'll need help to get the best out of Tmux.   
  A great source of information is the Ubuntu version of the [man pages.](http://manpages.ubuntu.com/manpages/precise/en/man1/tmux.1.html)   
  It's better-suited to my reading style than the [official man pages](http://www.openbsd.org/cgi-bin/man.cgi/OpenBSD-current/man1/tmux.1?query=tmux&sec=1) but YMMV.