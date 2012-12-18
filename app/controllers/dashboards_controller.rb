class DashboardsController < ApplicationController
  def show
    @shout = Shout.new
    @timeline = current_user.timeline
  end
end