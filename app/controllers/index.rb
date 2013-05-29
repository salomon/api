get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/email' do
  @user = Octokit.user(params[:username])
  erb :email
end


get '/avatar' do
  @user = Octokit.user(params[:username])
  @number = @user.gravatar_id
  p @number
  erb :avatar
end


get '/location' do
  @user = Octokit.user(params[:username])
  erb :location
end