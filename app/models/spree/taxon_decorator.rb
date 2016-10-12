Spree::Taxon.class_eval do
  has_one :page, class_name: 'Spree::Page'

  has_attached_file :image,
                    styles: { large: '1600x1000>', small: '500x500>' },
                    default_style: :small,
                    path:  "/spree/taxons/:id/image/:style/:basename.:extension",
                    s3_credentials: {
                      access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
                      secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
                      bucket:            ENV['S3_BUCKET_NAME']
                    },
                    storage:        :s3,
                    url:            ":s3_domain_url"
end
