class UsersController < ApplicationController

  
  def new
	     @user = User.new
  end	

  
  def create
  	  @user = User.new(user_params)
    if @user.save
      
      flash[:success] = "Welcome to the Appunte #{@user.username}"
      redirect_to notes_path
    else
      render 'new'
    end
  end



  def edit
     @user = User.find(params[:id])
  end

def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    flash[:success] = "Se guardo su modificacion"
    redirect_to edit_user_path

    else
      render 'edit'
    end
end

def show
    @user = User.find(params[:id])
end 











private
 
 def user_params
   params.require(:user).permit(:username, :email, :password)
 end	


end