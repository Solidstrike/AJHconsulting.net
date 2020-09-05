class PostsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @project = Project.find(params[:project_id])
    @posts = Post.all
  end

  def new
      @post = Post.new
  end

  def create
    @post = Post.new(strong_params)
    @post.user_id = current_user.id
    @post.project_id = Project.last.id

    if @post.save!
      flash[:alert] = "your post has been created"
      redirect_to root_path
    else
      render :new
    end

  end

  def show
    @project = Project.find(params[:id])
    @posts = Posts.new()
  end


  private
  def strong_params
    params.require(:post).permit(:content)
  end
end
