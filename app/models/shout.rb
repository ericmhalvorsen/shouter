class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :content, polymorphic: true
  attr_accessible :content
  attr_accessible :public
  
  delegate :email, to: :user, prefix: true
  
  def self.current
    order("created_at DESC")
  end
  
  def self.public
    current.where(public: true)
  end
  
  def self.search params
    indicies = SearchIndex.search(params)
    where(id: indicies.select(:shout_id))
  end
end
