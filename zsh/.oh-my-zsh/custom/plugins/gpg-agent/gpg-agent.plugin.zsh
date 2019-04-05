# Enable gpg-agent if it is not running
GPG_AGENT_SOCKET="$(gpgconf --list-dirs | grep 'agent-ssh-socket' | cut -d : -f 2)"
#GPG_AGENT_DIRMNGR_SOCKET="$(gpgconf --list-dirs | grep 'agent-socket' | cut -d : -f 2)"
pnum="$(pgrep gpg-agent)"
if [ ! -S "${GPG_AGENT_SOCKET}" ] && [ -z "${pnum}" ]; then
  #dbus-launch --sh-syntax --exit-with-session gpg-connect-agent updatestartuptty /bye >/dev/null 2>&1
  #dbus-launch gpg-connect-agent updatestartuptty /bye >/dev/null 2>&1
  gpg-connect-agent updatestartuptty /bye >/dev/null 2>&1
  #gpg-agent --daemon >/dev/null 2>&1
fi

export GPG_TTY=$(tty)

# Set SSH to use gpg-agent if it is configured to do so
GNUPGCONFIG="${GNUPGHOME:-"$HOME/.gnupg"}/gpg-agent.conf"
if [ -r "${GNUPGCONFIG}" ] && grep -q enable-ssh-support "${GNUPGCONFIG}"; then
  unset SSH_AGENT_PID
  export SSH_AUTH_SOCK=${GPG_AGENT_SOCKET}
  #dbus-launch --sh-syntax --exit-with-session gpg-connect-agent updatestartuptty /bye 
  #dbus-launch gpg-connect-agent updatestartuptty /bye 
  gpg-connect-agent updatestartuptty /bye 
fi
