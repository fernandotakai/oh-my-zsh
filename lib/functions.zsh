## fixme, i duplicated this in xterms - oops
function title {
  if [[ $TERM == "screen" ]]; then
    # Use these two for GNU Screen:
    print -nR $'\033k'$1$'\033'\\\

    print -nR $'\033]0;'$2$'\a'
  elif [[ $TERM == "xterm" || $TERM == "rxvt" ]]; then
    # Use this one instead for XTerms:
    print -nR $'\033]0;'$*$'\a'
  fi
}

function count_tabs() {
 echo $(osascript 2>/dev/null <<EOF 
tell application "Terminal"
    tell front window to count tabs
end tell
EOF) 
}

function precmd() {
    title "$PWD"
}

function preexec() {
    title "$(count_tabs) - $PWD"
}

function zsh_stats() {
  history | awk '{print $2}' | sort | uniq -c | sort -rn | head
}

function tvamazonas-exec(){
  ssh -C -l visie mediaspace.redeamazonica.com.br "$@"
}

function uninstall_oh_my_zsh() {
  /bin/sh $ZSH/tools/uninstall.sh
}

function upgrade_oh_my_zsh() {
  /bin/sh $ZSH/tools/upgrade.sh
}

function tab() {
  osascript 2>/dev/null <<EOF
    tell application "System Events"
      tell process "Terminal" to keystroke "t" using command down
    end
    tell application "Terminal"
      do script with command "cd \"$PWD\"; $*" in window 1
    end tell
EOF
}
