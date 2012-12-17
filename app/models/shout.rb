class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :content, polymorphic: true
  attr_accessible :body
  
  def self.current
    order("created_at DESC")
  end
end
