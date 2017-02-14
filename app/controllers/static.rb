get '/' do
	if current_user(session[:id])
		redirect '/dashboard'
	else
  	erb :"static/index"
	end
end


get '/dashboard' do
	if current_user(session[:id])
		@all_questions = Question.all.order(created_at: :desc)
		erb :'static/dashboard'
	else
		"you need to be logged in to view this page"
	end
end