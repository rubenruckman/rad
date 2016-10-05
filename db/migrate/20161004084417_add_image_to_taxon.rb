class AddImageToTaxon < ActiveRecord::Migration
  def up
    add_attachment :spree_taxons, :image
  end

  def down
    remove_attachment :spree_taxons, :image
  end
end
