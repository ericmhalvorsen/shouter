class PhotoShoutsController < ApplicationController
  def create
    @shout = build_shout
    @shout.save
    redirect_to dashboard_path
  end
  
  private 
  
  def build_shout
    current_user.shouts.new(public: params[:shout][:public], content: build_content)
  end
  
  def build_content
    PhotoShout.new(image: params[:shout][:content][:image])
  end
end