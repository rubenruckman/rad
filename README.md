admin pwd?
ruben@radfurniture.com
a1bumsu6

github
rubenruckman@gmail.com
pwd normal gp

Is it necessary to do something with these commands for ShellyCloud? will find out...

For Spree Static content, need to run some migrations:
bundle && bundle exec rails g spree_static_content:install

For Spree Editor:
rails g spree_editor:install

Installation steps for PRIOR setup, just on c9.io.  Look at github posts for the gems we are using, spree_static_content and spree_editor

gem install bundler
sudo apt-get install imagemagick
gem install spree_cmd
rails _4.2.0_ new radstore
sudo apt-get install imagemagick
cd mystore
spree install --auto-accept

bundle && bundle exec rails g spree_static_content:install

vetted cmds for development and git push shelly master
-------------------------------------------------------------------

For development server:
rails s -p $PORT -b $IP -e development

Commit to git:
git add 
git commit -m "msg: UI improvements"

Upload to github:
git push

To start ShellyCloud
git push shelly master
shelly start --cloud rad

to stop ShellyCloud