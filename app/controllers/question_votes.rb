post '/questions/:id/question_votes' do
	user = User.find_by(id: session[:id])
	params[:val].to_i == 1 ? vote = true : vote = false
	new_question_vote = user.question_votes.new(votes: vote, question_id: params[:id])
	existing_question_vote = QuestionVote.find_by(user_id: user.id, question_id: params[:id])
	
	if new_question_vote.save
	elsif existing_question_vote.votes == vote
		existing_question_vote.delete
	else
		existing_question_vote.update(votes: vote)
	end

	redirect "/questions/#{params[:id]}"
end