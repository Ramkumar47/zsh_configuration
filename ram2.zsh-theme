NCOLOR="red";

PROMPT='%B%{$fg[$NCOLOR]%}%c $(git_prompt_info)%{$reset_color%}➤%b '
# RPROMPT='%{$fg[$NCOLOR]%}%*%{$reset_color%}'
RPROMPT='[%{$fg[blue]%}%*%{$reset_color%}]'

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_no_bold[yellow]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$fg_bold[blue]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✓"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗"

# See https://geoff.greer.fm/lscolors/
export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"

