class Charity < ApplicationRecord
  has_many :donations
  has_attached_file :logo, styles: { medium: "350x350>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
end