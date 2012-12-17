class User < ActiveRecord::Base
  include Clearance::User
  has_many :shouts, dependent: :destroy
  has_many :following_relationships, foreign_key: :follower_id
  has_many :followed_users, through: :following_relationships
  
  def current_shouts
    shouts.current
  end
end
