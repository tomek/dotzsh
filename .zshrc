# Glowny folder oh-my-zsh.
ZSH=$HOME/.oh-my-zsh


# Aktualny theme
ZSH_THEME="tomkowy"


# Ponizej - syf oh-my-zsh
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras cp flagio mercurial svn lol extract nyan perl history-substring-search)
source $ZSH/oh-my-zsh.sh

# Skrocik do gita
git=/f/git


# Podstawowe aliasy.
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
#alias maroon="ssh tomek@m.sored.pl"
#alias rust="ssh tomek@r.sored.pl"
#alias sinopia="ssh tomek@s.sored.pl"
alias ping="PING" # pieprzony zsh za kazdym razem meczyl o poprawe -_-
alias tracert="TRACERT" # jak wyzej, jebany zsh
alias vikki="ssh tomek@vikki.yeuxverts.net -p 19788"
alias vpsik="ssh tomek@tomek.nekomimi.pl"
alias vksik="vpsik"
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
alias backupik='rsync -h -e ssh -avz --exclude rtorrent tomek@m.sored.pl:/home/tomek/ /home/maroon --progress'
#alias wget ='noglob wget'
#alias curl ='noglob curl'

# Aliasy dla Japanese-Tools
JAPANESE_TOOLS=$git/Japanese-Tools
alias ja="$JAPANESE_TOOLS/jmdict/jm.sh"
alias wa="$JAPANESE_TOOLS/jmdict/wa.sh"
alias rtk="$JAPANESE_TOOLS/rtk/rtk.sh"
alias sen="$JAPANESE_TOOLS/yahoo_jisho/daijisen.sh"
alias rin="$JAPANESE_TOOLS/yahoo_jisho/daijirin.sh"
alias gd="$JAPANESE_TOOLS/google_dictionary/gd.sh"
alias romaji="$JAPANESE_TOOLS/romaji/romaji.sh"
alias reading="$JAPANESE_TOOLS/reading/read.py"
alias kdct="$JAPANESE_TOOLS/kanjidic/kanjidic.sh"
alias gt="$JAPANESE_TOOLS/google_translate/gt.sh"


# Exporty dla cygwina
# export LD_LIBRARY_PATH=/usr/local/lib
# export LIBRARY_PATH=/usr/local/lib
# export CPATH=/usr/local/include


# Kolorki
eval $( dircolors -b $HOME/LS_COLORS )


#PATH
PATH=/home/git2/bin:/usr/local/heroku/bin:$PATH


# Z
# . $git/z/z.sh

# Zsh-completions
fpath=($git/zsh-completions/src $fpath)
