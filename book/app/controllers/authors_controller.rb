class AuthorsController < ApplicationController


	def
	@authors = Author.all
	end
end
