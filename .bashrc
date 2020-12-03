DEFAULT=$PS1

pink=$(tput setaf 212);
purple=$(tput setaf 171);
cyan=$(tput setaf 061);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[${bold}\]";		    # Bold
PS1+="\[${pink}\]\u ";		# User
PS1+="\[${purple}\]\W ";	# Working directory
PS1+="\[${cyan}\]> ";		# Arrow Cursor
PS1+="\[${reset}\]";		# Reset color
export PS1;