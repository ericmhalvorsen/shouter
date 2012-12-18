class PhotoTimeline
  def initialize shouts
    @shouts = shouts
  end

  def shouts
    @shouts.where(content_type: "PhotoShout")
  end
end