class Video < ActiveRecord::Base
  validates :title, :embed_code, :presence => true
  validate :must_have_valid_embed_code
  attr_accessible :title, :embed_code
  
  def must_have_valid_embed_code
    unless embed_code.include?("<iframe")
      errors.add(:embed_code, "Must include an iframe tag")
    end
  end
end
