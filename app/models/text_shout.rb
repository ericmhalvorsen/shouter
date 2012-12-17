class TextShout < ActiveRecord::Base
  has_one :shout, as: :content
  attr_accessible :body
end
