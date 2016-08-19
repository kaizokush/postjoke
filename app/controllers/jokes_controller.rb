class JokesController < ApplicationController
	def index
		@jokes=Joke.all		
	end
	def create
		@joke=Joke.create(joke_params)
		redirect_to root_path
	end
	private
	def idea_params
		params.require(:joke).permit(:jokes,:author)
	end
end
