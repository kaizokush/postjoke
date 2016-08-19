class JokesController < ApplicationController
	def index
		@jokes=Joke.all		
	end
	def create
		@joke=Joke.create(joke_params)
		redirect_to root_path
	end
	private
	def joke_params
		params.require(:joke).permit(:jokes,:author)
	end
	def update
  @joke = Joke.find(params[:id])
  if @joke.update(joke_params)
    redirect_to root_path
  else
    redirect_to edit_joke_path(params[:id])
  end
end
end
