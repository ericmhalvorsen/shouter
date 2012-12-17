class DashboardsController < ApplicationController
  def show
    @text_shout = TextShout.new
    @photo_shout = PhotoShout.new
    @shouts = current_user.current_shouts
  end
end