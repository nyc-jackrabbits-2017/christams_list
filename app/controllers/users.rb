before "/*" do
  require_user
end

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/gifts'
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end
