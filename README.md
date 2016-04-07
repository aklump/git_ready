## Installation
1. Install this folder in `~/bin` so that you have `~/bin/git_ready/git_ready.sh`.
2. Create a symlink like this:
    
        cd ~/bin
        ln -s git_ready/git_ready.sh gr
        chmod u+x gr

## Usage
1. In shell, navigate into your git repo.
2. When you want to rebase in origin master and develop then do the following as a shell command:

        gr

## What this does
It saves the following keystrokes and makes working in GitFlow processes faster:

        git checkout master;
        git pull --rebase;
        git checkout develop;
        git pull --rebase;
        git checkout {whatever branch you started on};
        git status;
