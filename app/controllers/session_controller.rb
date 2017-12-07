class SessionController < ApplicationController
  def new
  end
  def create
  	user = User.find_by username: params[:session][:username].downcase
  	if user && user.authenticate(params[:session][:password])
  		#TODO save user infor into sessiom
  		flash[:success] = "login success"
  		log_in user
  		redirect_to user
  	else
  		flash[:danger] = "Invalid email/password combination"
  		render :new
  	end
  end
  def destroy
  	log_out
  	flash[:success] = "you are logged out"
  	redirect_to login_path
  end
end
