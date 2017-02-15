class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	has_secure_password
	has_many :questions
	has_many :answers
	has_many :question_votes
	has_many :answer_votes
	validates :email, :username, presence: true
	validates :email, :username, uniqueness: true
end