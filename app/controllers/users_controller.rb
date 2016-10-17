class UsersController < ApplicationController

before_action :require_same_user, only: [:edit, :update, :show]
  
  def new
	     @user = User.new
  end	

  
  def create
  	  @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
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
      flash[:success] = "se edito correctamente"
      redirect_to users_path

    else
      render 'edit'
    end
end



def show
    @user = User.find(params[:id])
end 






private
 
 def user_params
   params.require(:user).permit(:username, :email, :password, :avatar)
 end	

  def require_same_user
    if logged_in? and current_user != @user 
      
    else
      flash[:danger] = "solo puedes editar tu propia cuenta"
      redirect_to root_path

    end

   end  



end