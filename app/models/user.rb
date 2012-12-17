class User < ActiveRecord::Base
  include Clearance::User
  has_many :shouts, dependent: :destroy
  
  def current_shouts
    shouts.current
  end
end
