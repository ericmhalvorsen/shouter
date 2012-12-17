require 'spec_helper'

describe User do
  it '#can_follow? unless self' do
    user = FactoryGirl.build(:user)
    user.can_follow?(user).should be_false
  end
  
  it '#can_follow? unless already following' do
    user = create(:user)
    followed_user = create(:user)
    user.followed_users << followed_user
    user.can_follow?(followed_user).should be_false
  end
  
  it '#can_follow? other users' do
    user = create(:user)
    unfollowed_user = create(:user)
    user.can_follow?(unfollowed_user).should be_true
  end
end
