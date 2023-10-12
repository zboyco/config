if status is-interactive
    # Commands to run in interactive sessions can go here
end

# 永久关闭 fish 欢迎词
set -U fish_greeting ''

# Add Homebrew to PATH
set -x PATH $PATH /opt/homebrew/bin/

set -x PATH $PATH /Users/shannon/.ssh/remote /Users/shannon/go/bin

# k8s config
set -x KUBECONFIG ""
set kubeconfigDir $HOME/.kube/config.d

for i in $kubeconfigDir/*
    set KUBECONFIG "$KUBECONFIG:$i"
end

alias r 'ranger'

starship init fish | source
