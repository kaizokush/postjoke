class JokesController < ApplicationController
	def index
		@jokes=Joke.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 3)		
	end
	
	def edit
 	 @joke = Joke.find(params[:id])
	end
	def create
		@joke=Joke.create(joke_params)
		redirect_to root_path
	end
		
		def update
 	 @joke = Joke.find(params[:id])
  	if @joke.update(joke_params)
    redirect_to root_path
  	else
    redirect_to edit_joke_path(params[:id])
  	end
	end
	def destroy
  		@joke = Joke.find(params[:id])
  		@joke.destroy
  		redirect_to root_path
	end
	def random
 	 @joke = Joke.order("RANDOM()").first

	end
	
	private
	def joke_params
		params.require(:joke).permit(:jokes,:author)
	end

end