class FeedController < ApplicationController

def index

  @posts = Post.all #@posts = Post.where(lon and lat is close)
end


end
