class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    
    if @contact.save!
      flash[:alert] = "your email has been sent"
      redirect_to root_path
    else
      render :new
    end
  end
  
  def thanks
  end

private

def strong_params
  params.require(:contact).permit(:name, :email, :telephone, :subject, :comment)
end
end
