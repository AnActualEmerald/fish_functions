function sulk --description "Replacement for Bash 'sudo !!' to run the last command as sudo"
	echo (eval command doas $history[1])
end
