alias ..="cd .."
alias ....="cd ../.."
alias cd-="cd -"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b ~/.dircolors)"
    alias ls='ls --color=auto -C -h'
    # alias ls='ls --color=auto --group-directories-first'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

	# colored GCC warnings and errors
	export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
# else
	# alias ls='ls --group-directories-first'
fi

alias l='ls'
alias la="ls -la"
alias lsa="ls -a"
alias ll="ls -l"

alias du="du -h"
alias x=exit
alias cls="clear"
alias c="clear"
alias py="python3"
alias vimrc="vim $HOME/.vimrc $HOME/.vimrc.local -O"
alias vimh="vim *.h -O"
alias vimp="vim -p"
alias vimo="vim -o"
alias vimO="vim -O"
alias sl="ls"
alias bc="bc -l"
alias make="make -r"

### git ###
alias gst="git status"
alias ga="git add"
alias ga.="git add . --all"
alias gcm="git commit -m"
alias gcmb="git commit -m \"Blank Commit Message\""
alias gpush="git push"
alias gsaveb="git add . --all; git commit -m \"Blank Commit Message\"; gpush"
alias gpull="git pull"
alias gpullo="git pull origin"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gb="git branch"
alias gl="git log"
alias gll="echo 'git log --oneline --decorate --graph --all'; echo ""; git log --oneline --decorate --graph --all"
alias gls="echo 'git log --oneline --decorate --graph --all -10'; echo ""; git log --oneline --decorate --graph --all -10"
alias gdiff="git difftool"

alias aliases="vim $HOME/.bash_aliases"
alias brc="source $HOME/.bashrc"


# Ubuntu Subsystem
if [ `hostname` = "BrentsPC" ]
then
	alias excel="cmd.exe /C C:/Program\ Files/Microsoft\ Office\ 15/root/office15/excel.exe"
	alias word="cmd.exe /C C:/Program\ Files/Microsoft\ Office\ 15/root/office15/winword.exe"
	alias nomargins="cmd.exe /C C:/Users/hurstgb/Documents/Custom\ Office\ Templates/NoMargins.dotx"
	alias todo="cmd.exe /C C:/Users/hurstgb/Documents/Oft\ Used/To-Do\ List.xlsx"
	# alias o="cmd.exe /C start"
	alias cdf="cd /mnt/c/Users/hurstgb/onedrive/finances"
	alias hours="cmd.exe /C start C:/Users/hurstgb/Documents/UTCourses/SP19/302/taStuff/hours.xlsx"
	alias "np++"="/mnt/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe"
	alias "np"="/mnt/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe"
	alias u="ssh hydra"
	alias un="ssh tmn678@neuro-firewall.eecs.utk.edu"
fi
