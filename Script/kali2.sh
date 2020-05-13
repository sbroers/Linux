echo "xfce4-session" > ~/.xsession
D=/usr/share/xfce4:/usr/share/xubuntu:/usr/local/share
D=${D}:/usr/share:/var/lib/snapd/desktop:/usr/share
cat <<EOF > ~/.xsessionrc
export XDG_SESSION_DESKTOP=xfce
export XDG_DATA_DIRS=${D}
export XDG_CONFIG_DIRS=/etc/xdg/xfce4/etc/xdg:/etc/xdg
EOF

sudo cp /usr/bin/light-locker /usr/bin/light-locker.orig

cat <<EOF | sudo tee /usr/bin/light-locker
!/bin/sh

# The light-locker uses XDG_SESSION_PATH provided by lightdm.
if [ ! -z "\${XDG_SESSION_PATH}" ]; then
  /usr/bin/light-locker.orig
else
  # Disable light-locker in XRDP.
  true
fi
EOF

sudo chmod a+x /usr/bin/light-locker
