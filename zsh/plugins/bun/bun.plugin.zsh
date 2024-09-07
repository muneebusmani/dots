# If Bun is not found, don't do the rest of the script
if (( ! $+commands[bun] )); then
  return
fi

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `bun`. Otherwise, compinit will have already done that.
export ZSH_CACHE_DIR=/home/muneeb/.cache/zsh
if [[ ! -f "$HOME/.bun/_bun" ]]; then
  typeset -g -A _comps
  autoload -Uz _bun
  _comps[bun]=_bun
fi

bun completions >| "$HOME/.bun/_bun" &|
