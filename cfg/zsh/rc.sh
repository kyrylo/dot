export EDITOR="emacs -nw"
export HISTFILE=~/.zsh_history
export HISTSIZE=25000
export SAVEHIST=25000
export REPORTTIME=10

export PS1='%F{244}%3~$(git_info_for_prompt)%#%f '

# If a command is issued that can’t be executed as a normal command, and the
# command is the name of a directory, perform the cd command to that directory.
setopt AUTO_CD

# Make cd push the old directory onto the directory stack.
setopt AUTO_PUSHD

# For example, suppose /foo/bar is a link to the directory /alt/rod. Without
# this option set, ‘cd /foo/bar/..’ changes to /foo; with it set, it changes to
# /alt. The same applies if the current directory is /foo/bar and ‘cd ..’ is
# used. Note that all other symbolic links in the path will also be resolved.
setopt CHASE_DOTS

setopt PUSHD_IGNORE_DUPS

setopt PUSHD_SILENT

# Prevents aliases on the command line from being internally substituted before
# completion is attempted. The effect is to make the alias a distinct command
# for completion purposes.
# setopt COMPLETE_ALIASES

# Don't kill background jobs on exit.
setopt NO_HUP

# Don't beep on an ambiguous completion.
setopt NO_LIST_BEEP

# ? Cargo-culted legacy.
setopt LOCAL_OPTIONS

# ? Cargo-culted legacy.
setopt LOCAL_TRAPS

# Whenever the user enters a line with history expansion, don’t execute the
# line directly; instead, perform history expansion and reload the line into
# the editing buffer.
setopt HIST_VERIFY

# Imports new commands from the history file, and also causes your typed
# commands to be appended to the history file.
# setopt SHARE_HISTORY

# Parameter expansion, command substitution and arithmetic expansion are
# performed in prompts. Substitutions within prompts do not affect the command
# status.
setopt PROMPT_SUBST

# Try to correct the spelling of commands.
setopt CORRECT

# Whenever a command completion or spelling correction is attempted, make sure
# the entire command path is hashed first. This makes the first completion
# slower but avoids false reports of spelling errors.
setopt HASH_LIST_ALL

# Note the location of each command the first time it is executed. Subsequent
# invocations of the same command will use the saved location, avoiding a path
# search. If this option is unset, no path hashing is done at all. However, when
# CORRECT is set, commands whose names do not appear in the functions or aliases
# hash tables are hashed in order to avoid reporting them as spelling errors.
setopt HASH_CMDS

# Whenever a command name is hashed, hash the directory containing it, as well
# as all directories that occur earlier in the path. Has no effect if neither
# HASH_CMDS nor CORRECT is set.
setopt HASH_DIRS

# If unset, the cursor is set to the end of the word if completion is started.
# Otherwise it stays there and completion is done from both ends.
setopt COMPLETE_IN_WORD

# If this is set, zsh sessions will append their history list to the history
# file, rather than replace it. Thus, multiple parallel zsh sessions will all
# have the new entries from their history lists added to the history file, in
# the order that they exit.
setopt APPEND_HISTORY

# This options works like APPEND_HISTORY except that new history lines are added
# to the $HISTFILE incrementally (as soon as they are entered), rather than
# waiting until the shell exits.
# setopt INC_APPEND_HISTORY

# If a new command line being added to the history list duplicates an older one,
# the older command is removed from the list (even if it is not the previous
# event).
setopt HIST_IGNORE_ALL_DUPS

# Remove superfluous blanks from each command line being added to the history
# list.
setopt HIST_REDUCE_BLANKS

# Turns on interactive comments; comments begin with a #.
setopt INTERACTIVECOMMENTS

# Emacs editing mode.
bindkey -e

# Custom functions.
fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)

{ eval `ssh-add ~/.ssh/id_rsa` } &>/dev/null

case $OSTYPE in
    darwin*)
      . /usr/local/share/chruby/chruby.sh
    ;;
    *)
      . /usr/share/chruby/chruby.sh
    ;;
esac
