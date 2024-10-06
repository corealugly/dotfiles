#alias k8s='function _t() { if [ ${1} == start ]; then minikube ${1} --vm-driver kvm2 --mount --mount-string ~/work/k8s/:/tmp/k8s/; fi; if [ ${1} == stop ]; then minikube ${1}; fi }; _t '
alias k9s="/home/corealugly/work/git/k8s-sudism-confs/k9s"

alias vipnet='function _t() { if [ ${1} == start ]; then sudo iptables -A OUTPUT -d 37.230.149.108 -j DROP; fi; if [ ${1} == stop ]; then sudo iptables -D OUTPUT -d 37.230.149.108 -j DROP; fi;  docker ${1} vipnet; sleep 5; systemctl --user ${1} ssh-sock-dc3.service; }; _t '
#alias vipnet='function _t() { docker ${1} vipnet; sleep 5; systemctl --user ${1} ssh-sock.service; systemctl --user ${1} ssh-sock-xenon.service  }; _t '

#alias telegramh="nohup telegram-desktop -many -workdir ~/.telegram/home/ &"
#alias telegramw="nohup telegram-desktop -many -workdir ~/.telegram/work/ &"

#alias sudos='ssh host.local'

alias kdebug='function _f() { kubectl run -n ${1:-sudis} --rm -it debug --image=${2:-docker.cloud.mvd.ru/busybox} --image-pull-policy="IfNotPresent" --overrides='\''{"spec": {"imagePullSecrets":[{"name": "regcred"}]}}'\'' --restart=Never -- sh; }; _f'

#docker / swarm
alias drm="docker run --entrypoint /bin/bash --rm -it"
alias dr="docker run --entrypoint /bin/bash -it"
alias cad="cd /etc/pki/ca/" 
alias stdeploy="docker stack deploy -c ./docker-compose.yml \$(basename \$(pwd)) --with-registry-auth"
alias strm="docker stack rm \$(basename \$(pwd))"
alias dslc="docker service ls | grep -i  \" \$(basename \$(pwd))_\""
alias dsl="docker service ls"

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

alias bb_test="optirun -v -b virtualgl -c jpeg glxgears"
alias bb_check="optirun -vv glxinfo | grep -iE 'OpenGL|rendering:'"
alias bb_fps_check="optirun -vv glxspheres64"
alias video_check="glxinfo | grep -iE 'OpenGL|rendering:'"
alias video_fps_check="glxspheres64"

alias os='openstack'

#GIT
alias gitlp='git log --pretty=oneline'

alias yaml2json='python -c "import sys,yaml,json;sys.tracebacklimit=0;print(json.dumps(yaml.load(open(sys.argv[1]).read()), indent=2))"'

#KUBERNETES
alias k='/usr/bin/kubectl'
