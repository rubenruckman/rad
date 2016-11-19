class AddPageIdToTaxon < ActiveRecord::Migration
  def change
    add_column :spree_taxons, :page_id, :integer
    remove_column :spree_pages, :taxon_id
  end
end
