class PostsController < ApplicationController
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
    @post.instrument = @instrument
    if @post.save
      redirect_to users_path
    else
      render :new
    end
    @post.save
  end

  def show
    @instrument = Instrument.find(params[:id])
    @booking = Booking.new()
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(strong_params)
    @instrument.user_id = current_user.id
    @instrument.save!
    redirect_to instrument_path(@instrument)
  end

  def edit
    @instrument = Instrument.find(params[:id])
  end

  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(strong_params)
    redirect_to instrument_path(@instrument)
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    @instrument.destroy
    redirect_to users_path
  end


  private
  def strong_params
    params.require(:post).permit(:start_date, :end_date, :price, :status)
  end
end
