HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
unsetopt beep nomatch
bindkey -e
zstyle :compinstall filename '/home/ari/.zshrc'

autoload -Uz compinit
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats ' %b> '

setopt PROMPT_SUBST
compinit
PROMPT='%~ ${vcs_info_msg_0_}'
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
