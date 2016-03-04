class LikesController < ApplicationController
	before_action  :require_signin
	before_action	 :set_event

	def create
		@event.likers << current_user
		redirect_to @event, notice: "Erfolgreich geliked."
	end
	private

end

