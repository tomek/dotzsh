# Glowny folder oh-my-zsh.
ZSH=$HOME/.oh-my-zsh

# Aktualny theme
ZSH_THEME="tomkowy"

# Ponizej - syf oh-my-zsh

DISABLE_AUTO_UPDATE="true"

plugins=(git git-extras cp flagio mercurial svn lol extract nyan perl history-substring-search)

source $ZSH/oh-my-zsh.sh

# Skrocik do gita
git=/f/git

# Podstawowe aliasy.
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias ping="PING" # pieprzony zsh za kazdym razem meczyl o poprawe -_-
alias tracert="TRACERT" # jak wyzej, jebany zsh
#eval "$(hub alias -s)"
alias gsu="git submodule update"
alias znajdz="locate -i"
alias ls='ls -F --color=tty'
alias lsa='ls -lahF'
alias l='ls -laF'
alias ll='ls -lF'
alias s='ssh'
alias sl='ls -F'
alias hl='gl'
alias subl='/f/sublime/sublime_text.exe -w'
alias st='subl'
alias backupik='rsync -h -e ssh -avz --exclude rtorrent tomek@nekomimi.pl:/home/tomek/ /home/nekomimi --progress'
alias wget='noglob wget'

# Aliasy dla Japanese-Tools
jt=$git/Japanese-Tools
alias ja="$jt/jmdict/jm.sh"
alias wa="$jt/jmdict/wa.sh"
alias rtk="$jt/rtk/rtk.sh"
alias sen="$jt/yahoo_jisho/daijisen.sh"
alias rin="$jt/yahoo_jisho/daijirin.sh"
alias gd="$jt/google_dictionary/gd.sh"
alias romaji="$jt/romaji/romaji.sh"
alias reading="$jt/reading/read.py"
alias kdct="$jt/kanjidic/kanjidic.sh"
alias gt="$jt/google_translate/gt.sh"

# Exporty dla cygwina
# export LD_LIBRARY_PATH=/usr/local/lib
# export LIBRARY_PATH=/usr/local/lib
# export CPATH=/usr/local/include

# Kolorki
eval $( dircolors -b $HOME/LS_COLORS )

# PATH
PATH=/home/git2/bin:/usr/local/heroku/bin:$PATH

# zsh-completions
fpath=($git/zsh-completions/src $fpath)
