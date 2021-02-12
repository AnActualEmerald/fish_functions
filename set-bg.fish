function set-bg
  argparse --name=set-bg -i 'h/help' 'p/pallet=' -- $argv

  if test (count $argv) -le 0
      echo "Usage:"
      echo "set-bg <background> [-p|--pallet=]"
  end

  #echo Argv $argv
  #echo Flag $_flag_p

for a in $argv 
	if test -e $a 
   		cp $a $HOME/.config/wallpaper/image
   		nitrogen --save --set-scaled $HOME/.config/wallpaper/image
   		wal -c
   		if test -e "$_flag_p" 
      			cp $_flag_p $HOME/.config/wallpaper/pallet
      			wal --vte -nqi $HOME/.config/wallpaper/pallet
   		else
      			wal --vte -nqi $HOME/.config/wallpaper/image
   		end
	else
   		echo "Usage:"
   		echo "set-bg <background> [-p|--pallet=]"
	end
end
  
end
