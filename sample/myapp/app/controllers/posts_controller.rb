class PostsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @post = Post.new(params.require(:post).permit(:content, :user_id))
    if @post.save
      flash[:notice] = "新規投稿をしました"
      redirect_to :users
    else
      render "posts"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
