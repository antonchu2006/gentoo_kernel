# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
export PATH=/bin:/usr/bin:/usr/share/java/bin:/home/anton/.local/bin:/usr/share/charles/bin
export SPOTIPY_CLIENT_ID='33d3e8bdebbe4e2b87e8cb07220ad841'
export SPOTIPY_CLIENT_SECRET='030005f7fc2942aa962fe58ae4fcd257'

alias update-world="sudo bash -c 'sudo dispatch-conf && emerge -auvDU --with-bdeps=y @world && emerge -Cv sddm dist-kernel'"
