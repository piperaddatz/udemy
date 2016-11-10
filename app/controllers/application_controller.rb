class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
protect_from_forgery with: :exception

helper_method :current_user, :logged_in? 

def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end  

def logged_in?
  !!current_user

  end  

def require_user 
  if !logged_in?
    flash[:danger] = "debes estar loggeado"
    redirect_to root_path
  end
    
 end

def authenticated
    if current_user
      super
    else
      redirect_to login_path, :notice => 'if you want to add a notice'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end


 
end
