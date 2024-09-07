if [ "$TERM" = "linux" ]; then
  # Replace the color codes with the ones from your terminal emulator
  echo -en "\e]P0343742" #black
  echo -en "\e]P1F5958B" #darkred
  echo -en "\e]P2B7E48C" #darkgreen
  echo -en "\e]P3FFFFB9" #brown
  echo -en "\e]P47EB6FF" #darkblue
  echo -en "\e]P5C5C8C6" #darkmagenta
  echo -en "\e]P6C2EFFF" #darkcyan
  echo -en "\e]P7DDDDDD" #lightgrey
  echo -en "\e]P8CCCCCC" #darkgrey
  echo -en "\e]P9FF8D80" #red
  echo -en "\e]PADBFFB3" #green
  echo -en "\e]PBFFBE64" #yellow
  echo -en "\e]PCA8CEEA" #blue
  echo -en "\e]PDE296FF" #magenta
  echo -en "\e]PE9CE9FF" #cyan
  echo -en "\e]PFEEEEEE" #white
  # Uncomment the following line if you experience background artifacting
  # clear
fi
