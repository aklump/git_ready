#!/usr/bin/env bash
starting_dir=$PWD

#
# Test if we're in a git repo
#
# @code
#   if in_git_repo; then
# @endcode
#
function get_repo_root () {
  # Copyright (C) 2006,2007 Shawn O. Pearce <spearce@spearce.org>
  # Conceptually based on gitcompletion (http://gitweb.hawaga.org.uk/).
  # Distributed under the GNU General Public License, version 2.0.
  echo $(dirname $(git rev-parse --git-dir));
}

#
# Determine the current git branch
#
function get_branch() {
  echo "$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')"
}

path_to_root=$(get_repo_root)
if ! [ "$path_to_root" ]; then
  echo "You are not in a Git repo"
  exit
fi

branch=$(get_branch)

echo "`tput setaf 2`Starting from branch: $branch`tput op`"
git checkout master;
git pull --rebase;
git checkout develop;
git pull --rebase;
git checkout $branch;
git status;

branch=$(get_branch)
echo "`tput setaf 2`Welcome back to branch: $branch`tput op`"
cd $starting_dir
