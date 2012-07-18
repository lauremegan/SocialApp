class Comment < ActiveRecord::Base
  attr_accessible :body, :email, :name, :videos_id
  belongs_to :videos
end
