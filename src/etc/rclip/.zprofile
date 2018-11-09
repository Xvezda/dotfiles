# SSH with remote clipboard alias
ssh-clip() {
    # Send signal directly to netcat when exit to break while loop
    DIRECT_SIG="pbpaste | base64 | nc localhost 7331"
    trap 'eval "${DIRECT_SIG}"' INT TERM EXIT

    REMOTE_SCRIPT="/bin/bash $HOME/.ssh/remote.sh"
    ( eval "$REMOTE_SCRIPT" & ) > /dev/null 2>&1
    ssh -R 1337:localhost:7331 "$@"
    ( eval "sleep 3 && ${DIRECT_SIG}" & ) > /dev/null 2>&1
}
