local user='%{$fg[red]%}%n%{$reset_color%}'
local pwd='%{$fg[cyan]%}%~%{$reset_color%}'
local rvm='%{$fg[yellow]%}$(if [[ `rvm-prompt 2>/dev/null` != "" ]]; then echo -n " "; rvm-prompt i v g; fi)%{$reset_color%}'
local rbenv='%{$fg[yellow]%}$(if [[ `rbenv local 2>/dev/null` != "" ]]; then echo -n " "; rbenv local; fi)%{$reset_color%}'
local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'
local git_branch=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✚"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT="${pwd} » "
RPROMPT="${return_code}${git_branch}${rvm}${rbenv}"

