class SessionsController < ApplicationController

	def new

	end	

	def create
			  user = User.find_by(email: params[:session][:email].downcase)
  if user && user.authenticate(params[:session][:password])
     session[:user_id] = user.id
     flash[:success] = "Te has logeado correctamente"
     redirect_to notes_path
  else
    flash.now[:danger] = "Hay un error con su información"
    render 'new'
    end 
	end

	
  def destroy
    session[:user_id] = nil
    flash[:success] = "Haz cerrado sesion"
    redirect_to root_path
  end

end