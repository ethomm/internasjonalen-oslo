class SessionsController < ApplicationController
  	def new
  		render layout: 'admin'
	end
	def create
		@user = User.find_by(email: params[:session][:email].downcase)
		if @user && @user.authenticate(params[:session][:password])
			log_in @user
			params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
			redirect_to administrator_path
		else
			flash.now[:danger] = "Feil brukernavn og passord"
			render 'new'
		end
	end

	def destroy
		log_out if logged_in?
		flash.now[:alert] = "You are now logged out"
		redirect_to root_url
	end
end
