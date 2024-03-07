if status --is-interactive
    keychain --quiet --agents ssh,gpg
end

begin
    set -x GPG_TTY (tty)
    set -l HOSTNAME (hostname)
    if test -f ~/.keychain/$HOSTNAME-fish
        source ~/.keychain/$HOSTNAME-fish
    end
end
