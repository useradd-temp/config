if status is-interactive
    eval /Users/seunghaklee/miniforge3/bin/conda "shell.fish" "hook" $argv | source
end

function starship_transient_prompt_func
  starship module character
end
starship init fish | source
enable_transience


alias k=kubectl
alias tf=terraform

