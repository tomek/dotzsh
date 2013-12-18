#-------------------------------------------------------------------------------
# Antigen
#-------------------------------------------------------------------------------
PATH=/home/tomek/git/bin:$PATH

ANTIGEN_DEFAULT_REPO_URL=https://github.com/Eustachy/oh-my-zsh
source /f/git/antigen/antigen.zsh

# Glowny lib omz

antigen-use oh-my-zsh

# Pluginy

antigen-bundles <<EOBUNDLES

# git related stuff
git
git-extras
# git-flow-avh
# gitignore

# lazy mode on
extract

# history search
history-substring-search

# random
# z
# jump

# a must have completions
zsh-users/zsh-completions

EOBUNDLES

# Moj theme
antigen-theme tomkowy

# Odpal Antigena

antigen-apply

#-------------------------------------------------------------------------------
# Czas na czary ZSH
#-------------------------------------------------------------------------------

autoload -U compinit; compinit -i;     
autoload -U promptinit; promptinit;

setopt notify
setopt inc_append_history
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

#-------------------------------------------------------------------------------
# Rozne
#-------------------------------------------------------------------------------

# Skrociki
git=/f/git
mozb=/f/mozilla-build

# Aliasy
source ~/.zsh/aliasiki.zsh

# Kolorki
eval $( dircolors -b $HOME/LS_COLORS )
