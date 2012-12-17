class PhotoShoutsController < ApplicationController
  def create
    @shout = build_shout
    @shout.save
    redirect_to dashboard_path
  end
  
  private 
  
  def build_shout
    current_user.shouts.new(content: build_content)
  end
  
  def build_content
    PhotoShout.new(params[:photo_shout])
  end
end