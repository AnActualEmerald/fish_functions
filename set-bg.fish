# v0.2.1
# Written by Emerald, last updated 3/29/21

function set-bg -d "Set the background image and creates a matching terminal color scheme"
    # Test for nitrogen first, as it's preferred
    if test -n (type nitrogen | grep "could")
        set -g nitrogen
    else if test -n (type feh | grep "could")
        set -g feh
    else
        echo "it appears you don't have either feh or nitrogen installed on your system"
        return
    end

    getopts $argv | while read -l key value
        switch $key
            case _
                set -g file $value
            case p or pallet
                set -g _flag_p $value
            case P
                if test -e "$value"
                    cp $value $HOME/.config/wallpaper/pallet
                    wal --vte -nqi $HOME/.config/wallpaper/pallet
                    return
                else
                    ehco "Coudln't find the specified image: $value"
                    return
                end
        end
    end
    if set -q -g file
        if not test -e "$file"
            echo "Couldn't find the specified image: $file"
        end
        cp $file $HOME/.config/wallpaper/image
        if set -q -g nitrogen
            nitrogen --save --set-scaled $HOME/.config/wallpaper/image
        else if set -q -g feh
            feh --bg-scale $HOME/.config/wallpaper/image
        end
        #clear any cached color schemes
        wal -c
        if test -e "$_flag_p"
            cp $_flag_p $HOME/.config/wallpaper/pallet
            wal --vte -nqi $HOME/.config/wallpaper/pallet
        else
            wal --vte -nqi $HOME/.config/wallpaper/image
        end
    else
        echo "Usage:"
        echo "set-bg <background> [options]"
        echo "Options:"
        echo "-p | --pallet <file>         Use a  different file when generating color scheme"
        echo "-P <file>         Only change the color pallet, without changing the background"
    end


end
