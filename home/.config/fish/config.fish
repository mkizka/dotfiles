if status is-interactive
  # Commands to run in interactive sessions can go here
end

alias gg='ghq get'
alias gd='cd (ghq list -p | fzf)'

# mise
$HOME/.local/bin/mise activate fish | source
