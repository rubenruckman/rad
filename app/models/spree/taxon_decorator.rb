Spree::Taxon.class_eval do
  has_attached_file :image,
                    styles: { large: '1600x1000>', small: '500x500>' },
                    default_style: :small,
                    url: '/spree/taxons/:id/image/:style/:basename.:extension',
                    path: ':rails_root/public/spree/taxons/:id/image/:style/:basename.:extension',
                    default_url: '/assets/default_taxon.png'
end
