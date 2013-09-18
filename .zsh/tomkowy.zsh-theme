# Prompt settings

local user_host='%{$terminfo[bold]$fg[green]%}%n%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}$(git_remote_status)%{$reset_color%}'


_fishy_collapsed_wd() {
  echo $(pwd | perl -pe "
   BEGIN {
      binmode STDIN, ':encoding(UTF-8)';
      binmode STDOUT, ':encoding(UTF-8)';
   }; s|^$HOME|~|g; s|/([^/])[^/]*(?=/)|/\$1|g
")
}

# Git

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[magenta]%}› %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✘%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
# ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$fg[magenta]%}("
# ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$fg[magenta]%}) %{$reset_color%}"

# ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" +"
# ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$fg[green]%}

# ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" -"
# ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$fg[red]%}

# Prompt

PROMPT="${user_host}%{$terminfo[bold]$fg[blue]%} $(_fishy_collapsed_wd)%{$reset_color%}% ${git_branch}%B$%b "
