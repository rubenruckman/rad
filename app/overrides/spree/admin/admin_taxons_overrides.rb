Deface::Override.new(:virtual_path  => "spree/admin/taxons/_form",
                     :insert_after => '[data-hook="admin_inside_taxon_form"]',
                     :text          => "
                                       <div class='omega seven columns'>
                                         <%= f.field_container :image, class: ['form-group'] do %>
                                           <%= f.label :image, Spree.t(:image) %>
                                           <%= f.file_field :image %>
                                         <% end %>

                                        </div>

                              ",
                     name: "taxon_image")
