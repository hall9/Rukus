class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @post = Post.new
    @lat = params[:submit]
    #@posts = Post.all
    @posts = Post.order(created_at: :desc)
    @favorites = Post.joins(:favorites).where(:favorites => { :User_id =>  current_user})

  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = Comment.new
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  #def edit
  #end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.votes = 0

    respond_to do |format|
      if @post.save
        #format.html { redirect_to feed_url, notice: 'Post was successfully created.' }
        format.html { redirect_to feed_url }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to feed_url}
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to feed_url }
      format.json { head :no_content }
    end
  end

  def favorite
     if Favorite.exists?(User_id: current_user.id, Post_id: params[:id])
       @favorite = Favorite.find_by(User_id: current_user.id, Post_id: params[:id])
       @favorite.destroy
     else
       @favorite = Favorite.new
       @favorite.User_id = current_user.id
       @favorite.Post_id = params[:id]
       @favorite.save
     end
     redirect_to(feed_path)
  end

  def upvote
    @post = Post.find(params[:id])
    @post.votes = @post.votes+1
    @post.save
    redirect_to(feed_path)
  end

  def downvote
    @post = Post.find(params[:id])
    @post.votes = @post.votes-1
    @post.save
    redirect_to(feed_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:content, :User_id, :lat, :long, :votes, :user, :pic)
    end
end
