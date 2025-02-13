if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x PAGER cat
starship init fish | source

eval "$(/opt/homebrew/bin/brew shellenv)"
alias dev="cd ~/Dev"
alias tf=terraform


function kubectl --wraps kubectl
  env KUBECOLOR_CONFIG="$HOME/.config/kubecolor.yaml" command kubecolor $argv
end

function k --wraps kubectl
  env KUBECOLOR_CONFIG="$HOME/.config/kubecolor.yaml" command kubecolor $argv
end


function kw --wraps kubectl
  env KUBECOLOR_FORCE_COLOR=1  KUBECOLOR_CONFIG="$HOME/.config/kubecolor-watch.yaml" command watch -n 1 -c unbuffer kubecolor $argv
end

function kubecolor --wraps kubectl
  command kubecolor $argv
end

kubectl completion fish | source

set -gx  PATH $PATH $GOPATH/bin
set -gx  PATH $PATH $HOME/.krew/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#
#
#
