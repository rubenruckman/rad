Deface::Override.new(virtual_path: "spree/shared/_header",
                     insert_before: '#logo',
                     text: "
<% if @taxon && @taxon.image.present? %>
<div id='taxon-image-collection'>
   <div class='bcg skrollable skrollable-between' style='background-image: url(\"<%= @taxon.image.url(:large).html_safe %>\");' >
     <div class='hsContainer'>
       <div class='hsContent center'></div>
     </div>
   </div>
  </div>

<% end %>
                              ",
                     name: "taxon_image_page")



Deface::Override.new(virtual_path: "spree/shared/_main_nav_bar",
                     insert_after: '#main-nav-bar',
                     text: "
<% if @taxon && @taxon.image.present? %>
<div id='mob-taxon-image-collection' style='display:none;'>
   <div class='bcg skrollable skrollable-between' style='background-image: url(\"<%= @taxon.image.url(:large).html_safe %>\");' >
     <div class='hsContainer'>
       <div class='hsContent center'></div>
     </div>
   </div>
  </div>

<% end %>
                              ",
                     name: "mob-taxon_image_page")

Deface::Override.new(virtual_path: "spree/taxons/show",
                     insert_before: '[data-hook="taxon_products"]',
                     text: "
<% if @taxon && @taxon.page.present? %>
<%= @taxon.page.body.to_s.html_safe %>
<% end %>
                              ",
                     name: "taxon_image_page")

Deface::Override.new(virtual_path: "spree/taxons/show",
                     replace: '.taxon-title',
                     text: "
<div>
<div class='page_content_10' style='margin-bottom: 9px;'>
<div class='row' style='margin-left: -21px;'>
<h1 class='taxon-title'><%= @taxon.name %></h1>
</div></div>
</div>
                              ",
                     name: "taxon_page_title")
