# SET SESSION MANGER
if [ -f /home/${USER}/.xsession ]; then
	rm -f /home/${USER}/.xsession
fi
cat << 'EOF' >> /home/${USER}/.xsession
export LOGNAME=$USER
export LIBGL_ALWAYS_INDIRECT=1
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
mate-session # Works
#gnome-session --session=gnome-flashback-metacity --disable-acceleration-check & gnome-panel # Works
#xfce4-session # Works
EOF
