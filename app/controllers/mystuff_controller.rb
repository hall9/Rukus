class MystuffController < ApplicationController

  def myrukus
    @posts = Post.where(User_id: current_user)
  end

  def mycomments
    #SELECT Post.Post_id FROM Posts P
    #INNER JOIN Comments C on C.Post_ID = P.Post_ID
    #WHERE C.User_ID = <my_user_id>
    #comments = Comment.where(User_id: current_user)
    #@posts = Post.join(Post_id: comments.Posts_id)
    #@posts = Post.all
    #@comments = Comment.where(User_id: current_user)
    @comments = Post.joins(:comments).where(:comments => { :User_id =>  current_user}).uniq

  end

  def myfavorites
    @favorites = Post.joins(:favorites).where(:favorites => { :User_id =>  current_user})
    @favorites = @favorites.reverse_order
  end
end
