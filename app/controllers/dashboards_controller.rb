class DashboardsController < ApplicationController
  def show
    @shout = Shout.new
    @shouts = current_user.current_shouts
  end
end