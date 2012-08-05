class Image < ActiveRecord::Base
  attr_accessible :image, :title
  mount_uploader :image, ImageUploader
  
end
