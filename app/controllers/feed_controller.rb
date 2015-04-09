class FeedController < ApplicationController

def index
  @lat = params[:submit]
  @posts = Post.all #@posts = Post.where(lon and lat is close)
end


end
