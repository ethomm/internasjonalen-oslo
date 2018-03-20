class SessionsController < ApplicationController
  	def new
  		if logged_in?
  			redirect_to administrator_path
  		else
	  		render layout: 'admin'
	  	end
	end
	def create
		@user = User.find_by(email: params[:session][:email].downcase)
		if @user && @user.authenticate(params[:session][:password])
			log_in @user
			params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
			flash[:notice] = "Du er nå logget inn"
			redirect_to administrator_path
		else
			flash[:alert] = "Feil brukernavn og passord"
			render 'new'
		end
	end

	def destroy
		log_out if logged_in?
		flash[:alert] = "You are now logged out"
		redirect_to root_url
	end
end
