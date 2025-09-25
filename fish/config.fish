if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ls="eza --icons=always"
alias l="ls -la"
alias tree="ls --tree"

alias cd="z"

alias batp="bat --plain"
alias cat="batp"

fzf --fish | source
zoxide init fish | source

export FZF_CTRL_T_OPTS="
--style full
--walker-skip .git,node_modules,target
--preview 'bat -n --color=always {}'
--bind 'ctrl-/:change-preview-window(down|hidden|)'"

starship init fish | source
