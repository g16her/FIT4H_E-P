class ReviewsController < ApplicationController

	def index
		@movie = Movie.find(params[:flix_id])
		@reviews = @movie.reviews
	end

end
