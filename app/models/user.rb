class User < ActiveRecord::Base
  attr_accessible :email, :name, :avatar, :avatar_cache
  mount_uploader :avatar, AvatarUploader
  
  has_many :articles
 
end
