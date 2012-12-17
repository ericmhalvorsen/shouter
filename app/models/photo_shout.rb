class PhotoShout < ActiveRecord::Base
  # attr_accessible :title, :body
  has_attached_file :image
  attr_accessible :image
end
