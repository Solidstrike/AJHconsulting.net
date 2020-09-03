class PostsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @project = Project.find(params[:project_id])
    @posts = Post.all
  end

  def new
    @project = Project.find(params[:project_id])
    @post = Post.new
  end

  def create
    @post = Post.new(strong_params)
    @project = Project.find(params[:project_id])
    @post.user_id = current_user.id
    @post.project = @project
    if @post.save
      redirect_to users_path
    else
      render :new
    end
    @post.save
  end

  def show
    @project = Project.find(params[:id])
    @posts = Posts.new()
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(strong_params)
    @project.user_id = current_user.id
    @project.save!
    redirect_to project_path(@project)
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(strong_params)
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    # redirect_to users_path
  end


  private
  def strong_params
    params.require(:post).permit(:content)
  end
end
