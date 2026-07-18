# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="omz reload"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/opt/homebrew/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias compile="commit 'compile'"
alias timestamp="date +%s"
alias version="commit 'version'"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias projects="cd $HOME/dev"
alias vault="cd $HOME/Obsidian/Personal"

# Remote — the Mac mini is the primary machine, the Air is a window into it.
# -t forces a TTY (Claude Code's interactive UI needs one).
# `tmux new -A` attaches to the session or creates it, so a dropped SSH
# connection never kills a running job.
alias mini="ssh -t larenes-mac-mini 'tmux new -A -s main'"
alias minivault="ssh -t larenes-mac-mini 'cd ~/Obsidian/Personal && tmux new -A -s vault'"

# Copy stdin to the LOCAL clipboard, even over SSH (OSC 52). pbcopy would
# target the remote pasteboard, which is unreachable from here.
# Needs `set -g set-clipboard on` in .tmux.conf when running inside tmux.
clip() { printf "\033]52;c;%s\a" "$(base64 | tr -d '\n')"; }

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias watch="npm run dev"

# Git
alias gs="git status"
alias gb="git branch --sort=-committerdate"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force-with-lease"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias prune="git fetch --prune"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"
