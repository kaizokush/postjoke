class StaticPagesController < ApplicationController
end
class StaticPagesController < ApplicationController
  def about

  end

  def random
  		@joke = Joke.order("RANDOM()").first
  end
end