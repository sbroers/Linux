#/bin/bash
#
# Installations-Skript für cheat
#
apt update
apt install python python-pip git
pip install docopt pygments
#
git clone https://github.com/chrisallenlane/cheat.git
cd cheat
python setup.py install
cd ..
rm -r cheat
#
echo "export EDITOR=/usr/bin/nano" >> /etc/bash.bashrc
#
wget https://github.com/chrisallenlane/cheat/raw/master/cheat/autocompletion/cheat.bash
mv cheat.bash /etc/bash_completion.d/
#
echo "export CHEATCOLORS=true" >> /etc/bash.bashrc
#
source /etc/bash.bashrc
source /home/$USER/.bashrc 2> /dev/null || source /root/.bashrc
#
cheat -v && echo "cheat wurde erfolgreich installiert!" || echo "Installation fehlgeschlagen!"
