class PhotoShout < ActiveRecord::Base
  # attr_accessible :title, :body
  has_attached_file :image
  has_one :shout, as: :content
  attr_accessible :image
end
