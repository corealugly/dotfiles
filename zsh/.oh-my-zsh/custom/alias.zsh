#alias telegramh="nohup telegram-desktop -many -workdir ~/.telegram/home/ &"
#alias telegramw="nohup telegram-desktop -many -workdir ~/.telegram/work/ &"

alias DRM="docker run --entrypoint /bin/bash --rm -it"
alias DR="docker run --entrypoint /bin/bash -it"
alias CAD="cd /etc/pki/ca/" 

alias gpg-reload="gpg-connect-agent reloadagent /bye"

alias lshl="ls -l \$(find ./ -maxdepth 2 -type l -print)"

alias NMR="sudo bash -c '/etc/init.d/NetworkManager restart'"

alias xrhomel="xrandr --output eDP-1 --off --output DP-3-1 --auto --pos 2560x0 --rotate normal --output DP-3-2  --primary --auto --pos 0x0 --rotate normal" 
alias xrhomell="xrandr --output eDP-1 --off --output DP-3-1 --auto --pos 2560x0 --rotate normal --output DP-3-2  --primary --auto --pos 0x0 --rotate left" 
alias xrhomes="xrandr --output eDP-1 --off --output DP-3-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-3-2 --primary --mode 1920x1080 --pos 0x0 --rotate normal"
alias xrhomesl="xrandr --output eDP-1 --off --output DP-3-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-3-2 --primary --mode 1920x1080 --pos 0x0 --rotate left"
alias xrnorm="xrandr --output eDP-1 --auto --output DP-3-1 --off --output DP-3-2 --off"
alias xrwork="xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --mode 1920x1080 --pos 1920x0 --rotate normal --primary"
alias xrotatel="xrandr --output DP-3-2 --rotate left"
alias xrotaten="xrandr --output DP-3-2 --rotate normal"
alias xrotater="xrandr --output DP-3-2 --rotate right"

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

#alias startx-wrapper='screen -S startx-wrapper -d -m /usr/bin/startx && logout'
alias startx='screen -S startx-wrapper -d -m /usr/bin/startx && logout'
