class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update!(post_params)
    redirect_to root_url
  end
  
  private
  
  def post_params
    params.require(:post).permit(:content)
  end
end
