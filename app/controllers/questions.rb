post '/questions' do
	user = User.find_by(id: session[:id])
	question = user.questions.new(title: params[:'question-title'], description: params[:'question-description'])
	question.save
	redirect '/dashboard'
end

get '/questions/:id' do
	@question = Question.find_by(id: params[:id])
	erb :'questions/show'
end