class Question < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	has_many :answers
end
