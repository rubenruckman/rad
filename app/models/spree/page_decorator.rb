Spree::Page.class_eval do
  has_one :taxon, class_name: 'Spree::Taxon', inverse_of: :page
  accepts_nested_attributes_for :taxon
  def display
    "#{title} (#{slug})"
  end
end
