Deface::Override.new(:virtual_path  => "spree/admin/pages/_form",
                     :insert_bottom => '[data-hook="admin_page_form_right"] > .form-group:last-child',
                     :text          => "
                                      <div class='form-group'>
                                        <%= f.label :taxon, 'Taxon' %>
                                        <div class='checkbox'>
                                          <%= f.label :landing_of_taxon do %>
                                          <%= f.check_box :landing_of_taxon %>
                                          Use as landing of taxon
                                          <% end %>

                                         </div>

  <div >
        <%= f.field_container :taxon, class: ['form-group'] do %>
          <%= f.label :taxon_id, 'Taxon' %>
          <%= f.collection_select(:taxon_id, Spree::Taxon.all, :id, :name, { include_blank: Spree.t('match_choices.none') }, { class: 'select2'}) %>
        <% end %>
      </div>
                             </div>
                              ",
                     name: "page_taxon")
