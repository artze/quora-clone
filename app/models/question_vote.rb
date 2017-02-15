class QuestionVote < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :question
	belongs_to :user
	validates_uniqueness_of :user_id, scope: :question_id
end
