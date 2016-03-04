class RegistrationsController < ApplicationController
	before_action :set_event
	before_action :require_signin

	def index
		@event = Event.find(params[:event_id])
		@registrations = @event.registrations
	end

	def new
		@registration = @event.registrations.new
	end

	def create
		@registration = @event.registrations.new(registration_params)
		@registration.user_id = current_user.id
		if @registration.save
			#flash[:notice] = "Registrierung erfolgreich!"
			redirect_to event_path(@event.id), alert: "Registrierung erfolgreich!"
		else
			render "new"
		end
	end

	def destroy
		registration = Registration.find(params[:id])
		registration.destroy
		redirect_to event_registration_path(@event.id)
	end

	private
	def registration_params
		params.require(:registration).permit(:user_id, :event_id, :how_heard)
	end

	
end
