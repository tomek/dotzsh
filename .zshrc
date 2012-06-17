# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="prose"

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
plugins=(git mercurial svn lol extract nyan)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias maroon="ssh tomek@m.sored.pl"
alias rust="ssh tomek@r.sored.pl"
alias sinopia="ssh tomek@s.sored.pl"
alias ping="PING"
alias vikki="ssh tomek@vikki.yeuxverts.net -p 19788"

export LD_LIBRARY_PATH=/usr/local/lib
export LIBRARY_PATH=/usr/local/lib
export CPATH=/usr/local/include

JAPANESE_TOOLS=$HOME/Documents/GitHub/Japanese-Tools

alias ja="$JAPANESE_TOOLS/jmdict/ja.sh"
alias rtk="$JAPANESE_TOOLS/rtk/rtk.sh"
alias sen="$JAPANESE_TOOLS/yahoo_jisho/daijisen.sh"
alias rin="$JAPANESE_TOOLS/yahoo_jisho/daijirin.sh"
alias gd="$JAPANESE_TOOLS/google_dictionary/gd.sh"
alias romaji="$JAPANESE_TOOLS/romaji/romaji.sh"
alias reading="$JAPANESE_TOOLS/reading/read.py"
alias kdct="$JAPANESE_TOOLS/kanjidic/kanjidic.sh"
alias gt="$JAPANESE_TOOLS/google_translate/gt.sh"
