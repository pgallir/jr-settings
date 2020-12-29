#!/bin/bash

export GIT_PS1_SHOWDIRTYSTATE=true      # staged '+', unstaged '*'
export GIT_PS1_SHOWUNTRACKEDFILES=true  # '%' untracked files
export GIT_PS1_SHOWUPSTREAM="auto"      # '<' behind, '>' ahead, '<>' diverged, '=' no difference
export GIT_PS1_SHOWSTASHSTATE=true      # '$' something is stashed

# check if directory belongs to a git repo
# if it does, errorcode ($?) will be 0
function isgit() {
        git worktree list > /dev/null 2>&1
}

function git_branch() {
        isgit # check if folder is in a git repo
        if [[ $? == 0 ]]; then # check error code of last command
        # __git_ps1 puts the branch surrounded with round braces (())
        # the sed commmand replaces () braces with [] braces.
                echo "$(__git_ps1)" | sed -e 's/(\(.*\))/[\1]/' 
        fi
}

# PS1 string will be set here. Special is only the $(git_branch).
# If we are in a repo it will return a colorized string with the branch
# otherwise it will have no affect
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\e[00m\]\[\e[1;36m\]$(git_branch)\[\e[00m\]$ '
