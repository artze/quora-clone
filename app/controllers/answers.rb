post '/questions/:id/answers' do
	user = User.find_by(id: session[:id])
	answer = user.answers.new(description: params[:'answer-description'], question_id: params[:id])
	if answer.save
		redirect "/questions/#{params[:id]}"
	else
		"Answer post incomplete"
	end
end

get '/users/:id/answers' do
	@user = User.find_by(id: params[:id])
	@answers_arr = @user.answers.order(created_at: :desc)
	erb :'/answers/index'
end