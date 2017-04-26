class Charity < ApplicationRecord
  has_many :donations
  do_not_validate_attachment_file_type :logo
  has_attached_file :logo, 
    styles: { medium: "200x200>", thumb: "100x100>" }, 
    :storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :default_url => "/logos/:style/missing.png"
  before_post_process :resize_images
end

