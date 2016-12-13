get '/logout' do
  session.clear
  redirect '/users/new'
end
