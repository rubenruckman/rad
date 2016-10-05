Deface::Override.new(:virtual_path  => "spree/admin/taxons/_form",
                     :insert_after => '[data-hook="admin_inside_taxon_form"]',
                     :text          => "
                                       <div class='omega seven columns' data-hook='admin-taxon-image'>
                                         <%= f.field_container :image, class: ['form-group'] do %>
                                           <%= f.label :image, Spree.t(:image) %>
                                           <%= f.file_field :image %>
                                         <% end %>

                                        </div>

                              ",
                     name: "admin_taxon_image")

Deface::Override.new(:virtual_path  => "spree/admin/taxons/_form",
                     :insert_after => '[data-hook="admin-taxon-image"]',
                     :text          => "
<div >
        <%= f.field_container :page, class: ['form-group'] do %>
         <%= f.fields_for :page do |b| %>
          <%= f.label :page, 'page' %>
          <%= b.collection_select(:id, Spree::Page.all, :id, :display, { include_blank: Spree.t('match_choices.none') }, { class: 'select2'}) %>
        <% end %>
        <% end %>
      </div>

                              ",
                     name: "admin_taxon_page")
