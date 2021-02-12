function fish_prompt
	echo -n (set_color  01cdfe)
	echo -n [
	echo -n (set_color 05ffa1)
	echo -n (whoami)
	echo -n (set_color ff71ce)
	echo -n @ ; echo -n (set_color b967ff)
	echo -n (hostname)
	echo -n (set_color 01cdfe)
	echo -n ]":"
	echo -n (set_color fffb96)
	echo -n (prompt_pwd)
	echo -n (fish_git_prompt)
	echo -n (set_color ff71ce) 
	echo -n "\$ "
end
