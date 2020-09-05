class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @projects = Project.all



    # @markers = @projects.geocoded.map do |project|
    #   {
    #     lat: Project.latitude,
    #     lng: Project.longitude
    #   }
    # end

  end

  def show
    @project = Project.find(params[:id])
    # show status = # @new_project_request = NewProjectRequest.new()
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(strong_params)
    @project.user_id = current_user.id

    if @project.save
      flash[:notice] = 'Your project has been added'
      redirect_to project_path(@project)
    else
      render :new
    # @new_project_request = NewProjectRequest.new( @project.user_id, @project)
    end

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
    redirect_to users_path

    # I AM HERE
    def accept
      @post = Post.find(params[:id])
      @post.status = "Accepted"
      @post.save
      redirect_to users_path
    end

    def decline
      @post = NewProjectRequest.find(params[:id])
      @post.status = "Declined"
      @post.save
      redirect_to users_path
    end
  end

  private

  def strong_params
    params.require(:project).permit(:title, :company, :url, :specialty, :employment_type, :headline, :company_description, :job_description, :starts_at, :ends_at, :lat, :lng, :street, :house_number, :house_number_additional, :postcode, :country, :salary, :image, :image_company_logo, :user_id )
  end
end
