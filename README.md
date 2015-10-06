Spree for shellycloud
-------------------------------------------------------------------

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

For C9 development server:
--------------------------
sudo service postgresql start
rails s -p $PORT -b $IP -e development
URL: https://rad-shelly-rubenruckman.c9.io/

Commit to git:
git add 
git commit -m "msg: UI improvements"

Upload to github:
git push

Push to Shellycloud - this deploys as well.
git push shelly master


Starting and Stopping ShellyCloud
shelly start --cloud rad
to stop ShellyCloud
