class DashboardsController < ApplicationController
  def show
    @text_shout = TextShout.new
    @photo_shout = PhotoShout.new
    @timeline = current_user.timeline
  end
end