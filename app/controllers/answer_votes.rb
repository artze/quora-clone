post '/answers/:id/answer_votes' do
	user = User.find_by(id: session[:id])
	params[:val].to_i == 1 ? vote = true : vote = false
	new_answer_vote = user.answer_votes.new(votes: vote, answer_id: params[:id])
	existing_answer_vote = AnswerVote.find_by(user_id: user.id, answer_id: params[:id])
	
	if new_answer_vote.save
	elsif existing_answer_vote.votes == vote
		existing_answer_vote.delete
	else
		existing_answer_vote.update(votes: vote)
	end

	redirect "/questions/#{Answer.find_by(id: params[:id]).question.id}"
end