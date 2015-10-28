Deface::Override.new(:virtual_path => "spree/shared/_products",
  :name => "replace_product_index",
  :replace  => "div#products",
  :partial => "spree/products/product_index",
  :disabled => false)