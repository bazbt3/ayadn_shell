# This parallel 0.3 branch adds a refresh option to ayadn_shell

## (But doesn't allow the shell to exit cleanly!)

### First steps for those updating:

1. Create a new `ayadn_run.sh` file with contents as this branch. Change its permissions to allow executing as a program.
2. Overwrite the contents of `ayadn_shell.sh` with the new one in this branch.
3. Run using `$ ~/Documents/ayadn_run.sh` (if `~/Documents` is where you placed the 2 scripts.)

### How to exit:

1. To exit to the command prompt, type `0 [enter]` (and an immediate `ctrl-C` to terminate the running shell script.)
2. To kill the Tmux window type either `$ tmux kill-session` or `$ tmux kill-server` (a bit more aggressive.)   
  (Linux newcomers, omit the `$`.)

## No documentation updates - it's an alpha work-in-progress!

----

# A Linux Terminal window command line menu for Ayadn

A rudimentary menu system for [Ayadn](https://github.com/ericdke/na), the App.net command line client by [@ericdke](https://github.com/ericdke). My stuff is mainly intended to showcase Ayadn and provide a gentle introduction to Tmux and Tmuxinator.

Treat as very alpha. Actually, treat it as a bit rubbish. Better.

## Want to know more or try this out?

Please take a look at **[the documentation.](/docs/00-index.md)**

## Gratuitous screenshot:

![](http://bt3.com/images/f/fc/Ayadn_shell.png)

## Disclaimers

* It might appear as if I know what I'm doing. Maybe yes, maybe no. (I blogged about the first couple of sessions [trying to install Ayadn.](http://bazbt3.re-app.net/2014/10/23/command-line/))
* I don't have a Mac thus cannot test on one - however a Mac user *has* got Ayadn_shell to work.
