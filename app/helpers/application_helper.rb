helpers do
	def current_user(session_id)
		User.find_by(id: session_id)
	end

	# def is_logged_in?(session_id)

	# end

	# def list_all_questions
	# 	@questions_arr = []
	# 	Question.all.each do |elm|
	# 		@questions_arr.push([elm.title, elm.description])
	# 	end
	# end
end