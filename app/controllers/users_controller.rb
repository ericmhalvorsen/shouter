class UsersController < ApplicationController
  skip_before_filter :authorize
  
  def show
    @user = find_user
    @timeline = timeline_for(@user)
  end
  
  def find_user
    User.find(params[:id])
  end
  
  def timeline_for(user)
    if current_user.following?(user)
      user.timeline
    else
      user.public_timeline
    end
  end
end