function sulk --description "Replacement for Bash 'sudo !!' to run the last command as sudo"
	echo (eval command sudo $history[1])
end
