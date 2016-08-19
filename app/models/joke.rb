class Joke < ApplicationRecord::Base
	validates :joke, :author, presence: true
end
