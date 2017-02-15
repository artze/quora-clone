class AnswerVote < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :answer
	belongs_to :user
	validates_uniqueness_of :user_id, scope: :answer_id
end
