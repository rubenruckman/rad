Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_col-8_to_product_left_part',
                     :set_attributes => "[data-hook='product_left_part']",
                     :attributes => {:class => 'col-md-8'})
                     
Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_col-4_to_product_right_part',
                     :set_attributes => "[data-hook='product_right_part']",
                     :attributes => {:class => 'col-md-4'})

Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'remove_product_properties',
                     :remove => "[data-hook='product_properties']")

Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'remove_taxon-crumbs',
                     :remove => 'erb[loud]:contains("taxons")')
                     
Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'remove-description-attributes',
                     :set_attributes => "[data-hook='description']",
                     :attributes => {:class => ''})
                     
Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'remove-description-attributes',
                     :set_attributes => "[data-hook='description']",
                     :attributes => {:class => ''})

Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'replace_main_img_formatting',
                     :set_attributes => "#main-image",
                     :attributes => {:class => ''})

Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_container_attributes',
                     :set_attributes => "[data-hook='product_show']",
                     :attributes => {:class => 'product-container'})

Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'remove_panel_body',
                     :set_attributes => "div.panel-body",
                     :attributes => {:class => 'text-center'})

Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'hide_sm_md_thumbnails',
                     :set_attributes => "#thumbnails",
                     :attributes => {:class => 'hidden-xs'})

Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'replace_product_name',
                     :replace_contents => "h1.product-title",
                     :text => "<%  if @product.property('firstline').present? %>
                        <span><%= @product.property('firstline') %></span><%= @product.property('secondline') %>
                      <% else %>
                        <%= @product.name %>
                      <% end %>")