curl -L https://raw.githubusercontent.com/cchaudier/shellfactory/master/install.sh > /tmp/sf_install.sh && bash /tmp/sf_install.sh -l ; rm -f /tmp/sf_install.sh
echo 'export SFLIB=$HOME/.shellfactory/current/lib'>>~/.bashrc
