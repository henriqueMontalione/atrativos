class Atractive < ApplicationRecord
  belongs_to :user
  has_attached_file :image_file_name, :styles => { :medium => "300x300>", :thumb => "120x90#" },
  :path => ':rails_root/public/images/atractives/:id-:basename-:style.:extension',
  :url => '/images/atractives/:id-:basename-:style.:extension'
end
