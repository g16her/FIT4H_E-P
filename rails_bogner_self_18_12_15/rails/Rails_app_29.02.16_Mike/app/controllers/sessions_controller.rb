class SessionsController < ApplicationController

	def new
	end

	def create
		# raise params.to_yaml zeigt die Parameter an, die mitgegeben werden
		if user = User.authenticate(params[:email], params[:password])
			session[:user_id] = user.id
			flash[:notice] = "Erfolgreich angemeldet"
			redirect_to events_url
		else
			flash.now[:alert] = "ungültige Anmeldedaten!"
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: "Erfolgreich ausgeloggt"
	end
end
