function sysd -d "manage systemd unit files"
	set -g MODE list
	#get the command line args
	getopts $argv | while read -l key value
		switch $key
			case c
				set -g MODE create
			case _
				set -g FILE_NAME $value
		end
	end

	function _list_units
		
	end
end
