# Antigen

ANTIGEN_DEFAULT_REPO_URL=https://github.com/Eustachy/oh-my-zsh
source /f/git/antigen/antigen.zsh

antigen-lib

# Pluginy

antigen-bundle Eustachy/oh-my-zsh plugins/git
antigen-bundle Eustachy/oh-my-zsh plugins/git-extras
antigen-bundle Eustachy/oh-my-zsh plugins/lol
antigen-bundle Eustachy/oh-my-zsh plugins/extract
antigen-bundle Eustachy/oh-my-zsh plugins/nyan
antigen-bundle Eustachy/oh-my-zsh plugins/history-substring-search
antigen-bundle zsh-users/zsh-completions

# Moj theme
antigen-theme Eustachy/oh-my-zsh themes/tomkowy

antigen-apply

# Skrocik do gita
git=/f/git

# Aliasy
source ~/.zsh/aliasiki.zsh

# Kolorki
eval $( dircolors -b $HOME/LS_COLORS )
