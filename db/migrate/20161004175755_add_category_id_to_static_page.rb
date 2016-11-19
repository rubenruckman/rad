class AddCategoryIdToStaticPage < ActiveRecord::Migration
  def change
    add_column :spree_pages, :taxon_id, :integer
    add_column :spree_pages, :landing_of_taxon, :boolean, default: false
  end
end
