if status is-interactive
  # Commands to run in interactive sessions can go here
end

alias px='pnpm -s dlx'
alias gg='ghq get --look'
alias gd='cd (ghq list -p | fzf)'

# mise
$HOME/.local/bin/mise activate fish | source
