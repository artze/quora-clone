class Answer < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :question
	belongs_to :user
	has_many :answer_votes
	validates :description, presence: true

	after_save do
		question.update_attribute(:updated_at, Time.now)
	end
end