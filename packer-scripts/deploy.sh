sudo -s
cd ~
sudo apt-get install -y ruby1.9.3 git
gem install bundler

git clone https://github.com/charleyw/packer-demo.git
bundle install

sudo sed -i '$ d' /etc/rc.local
sudo echo "cd /home/ubuntu/packer-demo && bundle exec ruby -o 0.0.0.0 app.rb &" >> /etc/rc.local
sudo echo "exit 0" >> /etc/rc.local
