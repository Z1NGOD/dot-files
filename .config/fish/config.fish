if status is-interactive
    # Commands to run in interactive sessions can go here
zoxide init fish | source

thefuck --alias | source
end
# Alias for ls
function ls
    eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions
end

function cd
    z $argv
end
