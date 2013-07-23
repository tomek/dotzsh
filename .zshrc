#-------------------------------------------------------------------------------
# Antigen
#-------------------------------------------------------------------------------
PATH=/home/tomek/git/bin:$PATH

ANTIGEN_DEFAULT_REPO_URL=https://github.com/Eustachy/oh-my-zsh
source /f/git/antigen/antigen.zsh

# Glowny lib omz

antigen-use oh-my-zsh

# Pluginy

antigen-bundle Eustachy/oh-my-zsh plugins/git
antigen-bundle Eustachy/oh-my-zsh plugins/git-extras
antigen-bundle Eustachy/oh-my-zsh plugins/lol
antigen-bundle Eustachy/oh-my-zsh plugins/extract
antigen-bundle Eustachy/oh-my-zsh plugins/nyan
antigen-bundle Eustachy/oh-my-zsh plugins/history-substring-search
antigen-bundle Eustachy/oh-my-zsh plugins/z
antigen-bundle Eustachy/oh-my-zsh plugins/repo
antigen-bundle zsh-users/zsh-completions

# Moj theme
antigen-theme Eustachy/oh-my-zsh themes/tomkowy

# Odpal Antigena

antigen-apply

#-------------------------------------------------------------------------------
# Czas na czary ZSH
#-------------------------------------------------------------------------------

autoload -U compinit; compinit;     
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
mozb=/c/mozilla-build

# Aliasy
source ~/.zsh/aliasiki.zsh

# Kolorki
eval $( dircolors -b $HOME/LS_COLORS )
