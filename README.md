# About

`pick-from` is a text user interface for the Git cherry pick command. Given a
branch name on the command line

    $ pick-from <branch>

it will show a list of commits differing between the `HEAD` and the given
branch:

    Choose commits to cherry-pick and accept with `q'

    [ ] 13579ef: A commit message
    [X] fa45678: Another commit message

Commits can be picked with <kbd>Enter</kbd> and will be passed unconditionally
to `git cherry-pick` command. 


## Installation

Install [urwid][] and put the script into your `$PATH`. That's it.


[urwid]: http://excess.org/urwid/
