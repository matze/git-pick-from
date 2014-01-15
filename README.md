# About

`git-pick` is a text user interface for the Git cherry pick command. Given a
branch name on the command line

    $ git pick <branch>

it will show a list of commits differing between the `HEAD` and the given
branch:

    Choose commits to cherry-pick and accept with `q'

    [ ] 13579ef: A commit message
    [X] fa45678: Another commit message

Commits can be picked with <kbd>Enter</kbd> and will be passed unconditionally
to `git cherry-pick` command. 


## Installation

`git-pick` requires [urwid][] and can be installed by either running `python
setup.py install` or and putting the script into your `$PATH`.


[urwid]: http://excess.org/urwid/
