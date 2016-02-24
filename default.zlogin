# Original implementation from ArchWiki
##[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# Implementation to avoid the return 1 if logging in on a tty different from 1
if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]
then
	exec startx
else
	return 0
fi
