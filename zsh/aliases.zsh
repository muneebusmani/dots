alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.='exa -ald --color=always --group-directories-first --icons .*' # show only dotfiles
alias cat='bat --style header --style snip --style changes --style header'
alias grubup="sudo update-grub"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias rmpkg="sudo pacman -Rdd"
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias upd='/usr/bin/garuda-update'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='ugrep --color=auto'
alias fgrep='ugrep -F --color=auto'
alias egrep='ugrep -E --color=auto'
alias hw='hwinfo --short'                          # Hardware Info
alias big="expac -H M '%m\t%n' | sort -h | nl"     # Sort installed packages according to size in MB (expac must be installed)
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l' # List amount of -git packages
alias ip='ip -color'
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"
alias apt='man pacman'
alias apt-get='man pacman'
alias please='sudo'
alias tb='nc termbin.com 9999'
alias helpme='cht.sh --shell'
alias pacdiff='sudo -H DIFFPROG=meld pacdiff'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias jctl="journalctl -p 3 -xb"
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias cd=z
alias q=exit
alias ducks='du -cksh * | sort -rn | head'
alias ducks.='du -cksh .* | sort -rn | head'
alias cls=clear
alias nv=nvim
alias op='nvim ~/.zshrc'
alias oa='nvim ~/.aliases'
alias dg='dotnet aspnet-codegenerator'
alias cls='clear'
alias q='exit'
alias oe='nvim ~/.exports'
alias ls='exa -Al --color=always --group-directories-first --icons=always --no-user --no-permissions' # preferred listing
alias la='exa -A --color=always --group-directories-first --icons --no-user --no-permissions'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons --no-user --no-permissions'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons --no-user --no-permissions' # tree listing
alias l.='exa -ald --color=always --group-directories-first --icons --no-user --no-permissions .*' # show only dotfiles
alias cat='bat --style header --style snip --style changes --style header'
alias grubup="sudo update-grub"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias rmpkg="sudo pacman -Rdd"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias grep='grep --color=auto'
alias fgrep='grep -F --color=auto'
alias egrep='grep -E --color=auto'
alias hw='hwinfo --short'                          # Hardware Info
alias big="expac -H M '%m\t%n' | sort -h | nl"     # Sort installed packages according to size in MB (expac must be installed)
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l' # List amount of -git packages
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"
alias pacdiff='sudo -H DIFFPROG=meld pacdiff'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias rlp='source ~/.zshrc && echo "Reload Shell Profile!"'
alias rla='source ~/.aliases && echo "Reload Shell aliases!"'
alias rle='source ~/.exports && echo "Reload Shell exports!"'
alias rss='source ~/.zshrc && exec zsh"'
alias git-url='git remote -v'
alias yain='yay -S --noconfirm'
alias yare='yay -Rns --noconfirm'
alias yass='yay -Ss'
alias yasss='yay -Sqs'
alias yasi='yay -Qs'
alias yassi='yay -Qqs'
alias n='nvim .'
alias gsm=' git status | grep --color=auto modified'
alias gst=' git status'
alias cd=z
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias mux="tmuxinator"
alias muxl="tmuxinator list"
alias muxa="tmuxinator start"
alias muxo="tmuxinator stop"
alias muxop="tmuxinator open"
alias muxn="tmuxinator new"
alias npm="bun"
alias npx="bunx --bun"
function gcap(){
  git commit -am "$1";
  git push;
}
