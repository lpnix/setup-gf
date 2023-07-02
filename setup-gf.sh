#!/bin/sh
git clone https://github.com/tomnomnom/gf
cd gf
cp gf-completion.zsh /usr/src
echo 'source $GOPATH/usr/src/gf-completion.zsh' >> ~/.zshrc
source ~/.zshrc
cp -r examples ~/.gf
cd ../
git clone https://github.com/1ndianl33t/Gf-Patterns
cd Gf-Patterns
cp *.json ~/.gf
go install github.com/tomnomnom/gf@latest
cd /root/go/bin/
mv /root/go/bin/gf /bin 
