class CreateQuestionAnswerVotingTables < ActiveRecord::Migration
	def change
		create_table :question_votes do |t|
			t.boolean :votes
			t.belongs_to :question, index: true
			t.belongs_to :user, index: true

			t.timestamps
		end

		create_table :answer_votes do |t|
			t.boolean :votes
			t.belongs_to :answer, index: true
			t.belongs_to :user, index: true

			t.timestamps
		end
	end
end
