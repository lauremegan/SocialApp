class Video < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  attr_accessible :title, :embed_code
  
  validates :title, :embed_code, :presence => true
  validate :must_have_valid_embed_code
  
  validates_presence_of :title, :body
  validates_uniqueness_of :title
  
  def must_have_valid_embed_code
    unless embed_code.include?("<iframe")
      errors.add(:embed_code, "Must include an iframe tag")
    end
  end
end
