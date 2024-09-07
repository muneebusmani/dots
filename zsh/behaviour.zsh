 my-backward-delete-word () {
    local WORDCHARS='~!#$%^&*(){}[]<>?+;'
    zle backward-delete-word
 }
 zle -N my-backward-delete-word
bindkey '^W' my-backward-delete-word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

