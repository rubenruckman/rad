Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    :mini => '150x150#', # thumbs under image
    :small => '200x200>', # images on category view
    :product => '1200x768>', # full product image
    :large => '1200x768>' # light box image
  }
end