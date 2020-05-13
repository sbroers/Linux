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

polkit.addRule(function(action, subject) {
   if ((action.id == "org.freedesktop.color-manager.create-device" ||
        action.id == "org.freedesktop.color-manager.create-profile" ||
        action.id == "org.freedesktop.color-manager.delete-device" ||
        action.id == "org.freedesktop.color-manager.delete-profile" ||
        action.id == "org.freedesktop.color-manager.modify-device" ||
        action.id == "org.freedesktop.color-manager.modify-profile") &&
        subject.isInGroup("vglusers")) {
      return polkit.Result.YES;
   }
});

# Then restart policy kit
