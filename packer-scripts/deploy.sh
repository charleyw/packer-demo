cd ~
sudo apt-get install -y ruby1.9.3 git
gem install bundler

git clone https://github.com/charleyw/packer-demo.git
bundle install

sudo cp -f /tmp/rc.local /etc/rc.local
