## Installation

1. Install this folder in `~/opt` so that you have `~/opt/git_ready/git_ready.sh`
1. Set execute perms: 

        `chmod u+x ~/opt/git_ready/git_ready.sh`

1. Create a symlink like this:
        
        cd ~/bin && ln -s ~/opt/git_ready/git_ready.sh git_ready

1. Add this optional alias to `.bashrc`

        alias gr="git_ready"

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

