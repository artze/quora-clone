get '/' do
  erb :"static/index"
end


get '/dashboard' do
	if current_user(session[:id])
		erb :'static/dashboard'
	else
		"you need to be logged in to view this page"
	end
end