# config/deploy/shelly/before_restart
# Edit this hook through the Shellycloud interface using the following cmd: 
# shelly config edit config/deploy/shelly/before_restart

# Show errors for ShellyCloud
set -e

# Back up Spree public assets - images
mkdir -p disk/spree
ln -s ../disk/spree public/spree

# Back up ckeditor assets
mkdir -p disk/ckeditor_assets
ln -s ../disk/ckeditor_assets public/ckeditor_assets