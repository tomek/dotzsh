#-------------------------------------------------------------------------------
# Antigen
#-------------------------------------------------------------------------------
PATH=/home/tomek/git/bin:$PATH
fpath=(~/.zsh $fpath)

ANTIGEN_DEFAULT_REPO_URL=https://github.com/tomek/oh-my-zsh
source /f/git/antigen/antigen.zsh

# Glowny lib omz

antigen-use oh-my-zsh

# Pluginy

antigen-bundles <<EOBUNDLES

# git related stuff
git
git-extras

# lazy mode on
extract

# history search
history-substring-search

# a must have completions
zsh-users/zsh-completions

#systemadmin

EOBUNDLES

# Moj theme
# antigen-theme ~/.zsh/theme/tomkowy.zsh-theme
antigen-theme ~/.zsh/theme --loc=tomkowy --no-local-clone

# Odpal Antigena

antigen-apply

#-------------------------------------------------------------------------------
# Czas na czary ZSH
#-------------------------------------------------------------------------------

autoload -U compinit; compinit -i;     
autoload -U promptinit; promptinit;
autoload -U zmv

setopt notify
setopt inc_append_history
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

HISTSIZE=10000
SAVEHIST=8500

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

autoload -U url-quote-magic
zle -N self-insert url-quote-magic

autoload -Uz git-escape-magic
git-escape-magic

#-------------------------------------------------------------------------------
# Rozne
#-------------------------------------------------------------------------------

# Skrociki
git=/f/git
mozb=/f/mozilla-build
gtk=/f/gtk-build

# Aliasy
source ~/.zsh/aliasiki.zsh

# Kolorki
eval $( dircolors -b $git/LS_COLORS/LS_COLORS )
