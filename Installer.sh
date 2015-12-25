#/bin/bash
echo "Installing MacPorts"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install dpkg
echo "export THEOS=\"/opt/theos\">>~/.bash_profile
sudo git clone git://github.com/DHowett/theos.git $THEOS
git clone git://git.saurik.com/ldid.git
cd ldid
brew install wget
git submodule update --init
./make.sh
cp -f ./ldid $THEOS/bin/ldid
cd ../
rm -rf ./ldid
wget http://download.revealapp.com/Reveal.app.zip
unzip -XK ./Reveal.app.zip
chmod +x ./Reveal.app/Contents/MacOS/Reveal 
mv ./Reveal.app /Applications/Reveal.app
