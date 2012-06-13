class User < ActiveRecord::Base
  attr_accessible :email, :name
  mount_uploader :avatar, AvatarUploader
end
