class CreateQuestionsAnswersTables < ActiveRecord::Migration
	def change
		create_table :questions do |t|
			t.string :title
			t.text :description

			t.timestamps
		end

		create_table :answers do |t|
			t.text :description
			t.belongs_to :question, index: true

			t.timestamps
		end
	end
end