# Antigen

ANTIGEN_DEFAULT_REPO_URL=https://github.com/Eustachy/oh-my-zsh
source /f/git/antigen/antigen.zsh
antigen-lib
antigen-bundle Eustachy/oh-my-zsh plugins/git
antigen-bundle Eustachy/oh-my-zsh plugins/git-extras
antigen-bundle Eustachy/oh-my-zsh plugins/lol
antigen-bundle Eustachy/oh-my-zsh plugins/extract
antigen-bundle Eustachy/oh-my-zsh plugins/nyan
antigen-bundle Eustachy/oh-my-zsh plugins/history-substring-search
antigen-theme Eustachy/oh-my-zsh themes/tomkowy
antigen-apply

# Skrocik do gita
git=/f/git

# Podstawowe aliasy.
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias ping="PING" # pieprzony zsh za kazdym razem meczyl o poprawe -_-
alias tracert="TRACERT" # jak wyzej, jebany zsh
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
alias backupik='rsync -h -e ssh -avz --exclude rtorrent --exclude public_html tomek@nekomimi.pl:/home/tomek/ /home/nekomimi --progress'
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

# Kolorki
eval $( dircolors -b $HOME/LS_COLORS )

# zsh-completions
fpath=(/f/git/zsh-completions/src $fpath)
