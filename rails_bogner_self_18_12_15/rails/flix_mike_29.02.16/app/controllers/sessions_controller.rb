class SessionsController < ApplicationController

	def new
	end

	def create
		if user = User.authenticate(params[:email], params[:password])
			session[:user_id] = user.id
			flash[:notice] = 'Anmeldung erfolgreich!'
			redirect_to flix_index_url	
		else
			flash.now[:alert] = 'Falsche Anmeldedaten!'
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to flix_index_url
	end
end
