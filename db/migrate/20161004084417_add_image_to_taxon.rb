class AddImageToTaxon < ActiveRecord::Migration
  def change
    add_column :spree_taxons, :image, :string
  end
end
