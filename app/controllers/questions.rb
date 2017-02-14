post '/questions' do
	user = User.find_by(id: session[:id])
	question = user.questions.new(title: params[:'question-title'], description: params[:'question-description'])
	if question.save
		redirect '/dashboard'
	else
		"Question post incomplete"
	end
end

get '/questions/:id' do
	@question = Question.find_by(id: params[:id])
	@answers = @question.answers.order(created_at: :desc)
	erb :'questions/show'
end

get '/users/:id/questions' do
	@user = User.find_by(id: params[:id])
	@questions_arr = @user.questions.order(created_at: :desc)
	erb :'/questions/index'
end