class Micropost < ActiveRecord::Base
  attr_accessible :content # Making the content attribute (and only the content attribute) accessible. 
 belongs_to :user
 validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  default_scope order: 'microposts.created_at DESC'
end
