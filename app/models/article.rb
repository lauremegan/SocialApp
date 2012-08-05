class Article < ActiveRecord::Base
 attr_accessible :body, :title, :user_id
  
  validates_presence_of :user_id, :title, :body
  validates_uniqueness_of :title,:user_id
  
  belongs_to :user

  validates :content, :length => { :maximum => 140 }
  
end

#before the change
#attr_accessible  :body, :title
#validates_presence_of :title, :body
#validates_uniqueness_of :title
  
  

