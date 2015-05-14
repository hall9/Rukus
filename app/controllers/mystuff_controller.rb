class MystuffController < ApplicationController

  def myrukus
    @posts = Post.where(User_id: current_user)
  end

  def mycomments
    @comments = Comment.where(User_id: current_user)
  end

  def myfavorites
    @posts = Post.where(User_id: current_user)
  end
end
