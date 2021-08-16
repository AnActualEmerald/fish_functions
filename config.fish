#v0.1.0
#Written by Emerald, last updated 8/15/21

function config -d "Opens configuration files in default editor"

    #read options and flags from args
    getopts $argv | while read -l key value
        switch $key
            case _
                set file $value
        end
    end

    if set -q file
        switch $file
            case fish
                $EDITOR ~/.config/fish/config.fish
            case nvim
                $EDITOR ~/.config/nvim/init.vim
            case alacritty
                $EDITOR ~/.config/alacritty/alacritty.yml
            case '*'
                echo Not a recognized option: $file
        end
    else
        echo "Usage"
        echo "config <fish|nvim|alacritty>"

    end

end

