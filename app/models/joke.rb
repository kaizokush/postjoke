class Joke < ApplicationRecord
	validates :jokes, :author, presence: true
end
