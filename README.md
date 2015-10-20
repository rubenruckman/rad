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


For restoring backup to c9 development server:
-------------------------------------------------------------------
pg_restore --verbose --clean --no-acl --no-owner -h localhost -U rubenr -d spree_rad rad.sql


For Engineyard: Env variable secret_key_base for devise:
------------------------------------------
add gem 'envyable'
add config/env.yml
ey scp config/env.yml HOST:/data/radfurniture/shared/config/env.yml -e rad_production

SSH to database:
-----------------------------------
ssh deploy@ec2-52-26-240-237.us-west-2.compute.amazonaws.com

Connect to Postgres DB:
-------------------------------------------
psql -Udeploy -d radfurniture -h 127.0.0.1

For downloading images etc from shelly cloud.
--------------------------------------------------------------------
shelly file download --cloud rad



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
