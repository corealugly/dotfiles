alias telegramh="nohup telegram-desktop -many -workdir ~/.telegram/home/ &"
alias telegramw="nohup telegram-desktop -many -workdir ~/.telegram/work/ &"

alias DRM="docker run --entrypoint /bin/bash --rm -it"
alias DR="docker run --entrypoint /bin/bash -it"
alias CAD="cd /etc/pki/ca/" 

alias gpg-reload="gpg-connect-agent reloadagent /bye"

alias lshl="ls -l \$(find ./ -maxdepth 2 -type l -print)"

alias xrhome="xrandr --output eDP-1 --off --output DP-3-1 --auto --pos 2560x0 --rotate normal --output DP-3-2  --primary --auto --pos 0x0 --rotate normal" 
alias xrhomeleft="xrandr --output eDP-1 --off --output DP-3-1 --auto --pos 2560x0 --rotate left --output DP-3-2 --primary --auto --pos 0x0"
alias xrnorm="xrandr --output eDP-1 --auto --output DP-3-1 --off --output DP-3-2 --off"
alias xrwork="xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --mode 1920x1080 --pos 1920x0 --rotate normal --primary"

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
