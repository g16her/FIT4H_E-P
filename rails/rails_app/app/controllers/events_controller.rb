class EventsController < ApplicationController

	def index
		@events = Event.all
		
	end
	def show
		@event = Event.find(params)
	end

end
