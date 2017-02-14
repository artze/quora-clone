post '/questions/:id/answers' do
	user = User.find_by(id: session[:id])
	answer = user.answers.new(description: params[:'answer-description'], question_id: params[:id])
	answer.save
	redirect "/questions/#{params[:id]}"
end