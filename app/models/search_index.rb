class SearchIndex < ActiveRecord::Base
  belongs_to :shout
  attr_accessible :index
  
  def self.search params
    where("`index` LIKE ?", "%#{params[:q]}%")
  end
end
