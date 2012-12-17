class UsersController < ApplicationController
  skip_before_filter :authorize
  
  def show
    @user = User.find(params[:id])
    @shouts = @user.current_shouts
  end
end