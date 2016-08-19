class Joke < ApplicationRecord::ActiveRecord
	validates :jokes, :author, presence: true
end
