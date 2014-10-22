#
# Test if we're in a git repo
#
# @code
#   if in_git_repo; then
# @endcode
#
function in_git_repo () {
  # Copyright (C) 2006,2007 Shawn O. Pearce <spearce@spearce.org>
  # Conceptually based on gitcompletion (http://gitweb.hawaga.org.uk/).
  # Distributed under the GNU General Public License, version 2.0.
  if [ -d .git ] || (git rev-parse --git-dir 2> /dev/null); then
    return 0;
  fi;

  return -1;
}

#
# Determine the current git branch
#
function get_branch() {
  if in_git_repo; then
    echo "$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')"
  fi  
}

result=$(get_branch)
echo "`tput setaf 2`Starting from branch: $result`tput op`"
git checkout master;
git pull --rebase;
git checkout develop;
git pull --rebase;
git checkout $result;
git status;

result=$(get_branch)
echo "`tput setaf 2`Welcome back to branch: $result`tput op`"