# v0.2.2
# Written by Emerald, last updated 8/15/21

function set-bg -d "Set the background image and creates a matching terminal color scheme"
    # Test for nitrogen first, as it's preferred
    if test -n (type nitrogen | grep "could")
        set nitrogen
    else if test -n (type feh | grep "could")
        set feh
    end

    if test -n (type wal | grep "could")
        set wal
    else
        echo "This script requires pywal to work"
        return
    end
    
    getopts $argv | while read -l key value
        switch $key
            case _
                set file $value
            case p or pallet
                set _flag_p $value
            case s or skip 
                set _flag_s
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
    if set -q file
        if not test -e "$file"
            echo "Couldn't find the specified image: $file"
        end
        cp $file $HOME/.config/wallpaper/image
        if set -q nitrogen
            nitrogen --save --set-scaled $HOME/.config/wallpaper/image
        else if set -q feh
            feh --bg-scale $HOME/.config/wallpaper/image
        else
            #fall back to using wal to set the background if need be
            wal -qist $HOME/.config/wallpaper/image
        end
        #clear any cached color schemes
        if set -q _flag_s
            return
        else
            wal -c
            if test -e "$_flag_p"
                cp $_flag_p $HOME/.config/wallpaper/pallet
                wal --vte -nqi $HOME/.config/wallpaper/pallet
            else
                wal --vte -nqi $HOME/.config/wallpaper/image
            end
        end
    else
        echo "Usage:"
        echo "set-bg <background> [options]"
        echo "Options:"
        echo "-p | --pallet <file>         Use a  different file when generating color scheme"
        echo "-P <file>         Only change the color pallet, without changing the background"
        echo "-s | --skip              Skip setting the color pallet, only set the background"
    end


end
