init() {
  curl -L https://raw.githubusercontent.com/cchaudier/shellfactory/master/install.sh > /tmp/sf_install.sh && bash /tmp/sf_install.sh -l ; rm -f /tmp/sf_install.sh
  echo 'export SFLIB=$HOME/.shellfactory/current/lib'>>~/.bashrc
  mkdir -p $HOME/palette
  curl -L https://raw.githubusercontent.com/artisanslogiciel/palette/master/palette > $HOME/palette/palette
  chmod +x $HOME/palette/palette
  echo 'export PATH=$HOME/palette:$PATH'>>~/.bashrc
  export SFLIB=$HOME/.shellfactory/current/lib
  export PATH=$HOME/palette:$PATH
}

palettiser() {
cd buntufiles
for file in $(find . -name Buntufile|sort); do
  trt_palette $file
done
}

trt_palette() {
  nom_palette=$(dirname $file)
  echo "traite palette $nom_palette"
  cd $nom_palette
  palette
  cd -
}

init
palettiser
