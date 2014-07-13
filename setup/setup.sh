curl -L https://raw.githubusercontent.com/cchaudier/shellfactory/master/install.sh > /tmp/sf_install.sh && bash /tmp/sf_install.sh -l ; rm -f /tmp/sf_install.sh
echo 'export SFLIB=$HOME/.shellfactory/current/lib'>>~/.bashrc
mkdir -p $HOME/palette
curl -L https://raw.githubusercontent.com/artisanslogiciel/palette/master/palette > $HOME/palette/palette
chmod +x $HOME/palette/palette
echo 'export PATH=$HOME/palette:$PATH'>>~/.bashrc
export PATH=$HOME/palette:$PATH
