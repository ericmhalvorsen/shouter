class SearchesController < ApplicationController
  def show
    @timeline = find_timeline
  end
  
  private
  
  def find_timeline
    Timeline.new(perform_search)
  end
  
  def perform_search
    Shout.search(params[:search])
  end
end