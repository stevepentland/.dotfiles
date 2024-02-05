if status is-interactive
    # Commands to run in interactive sessions can go here
    # set -x XDG_DATA_DIRS /var/lib/flatpak/exports/share /home/steve/.local/share/flatpak/exports/share $XDG_DATA_DIRS
    source $HOME/.asdf/asdf.fish
    
    set -x PATH $PATH /usr/local/go/bin
    set -x PATH $PATH $HOME/go/bin
    set -x PATH $PATH $HOME/.local/bin
    set -x PATH $PATH $HOME/bin
    set -x PATH $PATH $HOME/.emacs.d/bin
    set -x PATH $PATH $HOME/.elixir-ls/
    set -x PATH $PATH $(yarn global bin)
    set -x PATH $PATH $HOME/.dotnet/tools
    set -x PATH $PATH $HOME/.google-cloud-sdk
    set -x PATH $PATH $HOME/.dotnet/tools
    set -x FLUTTER_GIT_URL "ssh://git@github.com/flutter/flutter.git"
    set -x CHROME_EXECUTABLE /usr/bin/google-chrome-stable

    # GPG/SSH config
    # set -x SSH_AUTH_SOCK $(gpgconf --list-dirs agent-ssh-socket)

    # NIM
    # set -ga fish_user_paths /home/steve/.nimble/bin
    
    # gpgconf --launch gpg-agent

    # Aliases
    alias copy="xclip -selection clipboard"
    alias paste="xclip -selection clipboard -o"
    alias hx="helix"
    alias k9c="kubectx && k9s"
    #alias vim="nvim"

    # pyenv init - | source
    kubectl completion fish | source
end

# opam configuration
source /home/steve/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/steve/.google-cloud-sdk/path.fish.inc' ]; . '/home/steve/.google-cloud-sdk/path.fish.inc'; end
