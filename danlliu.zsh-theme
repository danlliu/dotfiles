export VIRTUAL_ENV_DISABLE_PROMPT=1
setopt promptsubst
setopt promptpercent

prompt() {
  if [ $? -eq 0 ]; then 
    echo -n "%{$fg_bold[green]%} \u2b24 %{$reset_color%}"
  else
    echo -n "%{$fg_bold[red]%} \u2b24 %{$reset_color%}"
  fi

  echo -n "%F{69}<%n@%m>%F{reset} "

  echo -n "/"
  echo -n "%{$fg_bold[cyan]%} %c %{$reset_color%}"

  if [[ -n "$VIRTUAL_ENV" && -n "$VIRTUAL_ENV_DISABLE_PROMPT" ]]; then
    echo -n "%{$fg_bold[magenta]%}(${VIRTUAL_ENV:t:gs/%/%%})%{$reset_color%} "
  fi

  echo -n "| $(git_prompt_info)"

  echo -n "$ "

}

PROMPT='$(prompt)'
RPROMPT='%F{8}[%*]%F{reset}'
PS2='<%^> '
PS3='? '

# from robbyrussell theme
ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{blue}git:(%b%F{red}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{reset} "
ZSH_THEME_GIT_PROMPT_DIRTY="%B%F{blue})%F{yellow} *%b%F{reset}"
ZSH_THEME_GIT_PROMPT_CLEAN="%B%F{blue})%b%F{reset}"
