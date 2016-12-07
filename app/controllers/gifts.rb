get '/gifts' do
  @gifts = Gift.all
  erb :'gifts/index'
end


get '/gifts/new' do
  erb :'gifts/new'
end


post '/gifts' do
  gift = Gift.new(params[:gift])
  if gift.save
    redirect '/gifts'
  else
    @errors = gift.errors.full_messages
    erb :'gifts/new'
  end
end

get '/gifts/:id/edit' do
  @gift = Gift.find(params[:id])
  erb :'gifts/edit'
end

put  '/gifts/:id' do
  @gift = Gift.find(params[:id])
  if @gift.update(params[:gift])
    redirect '/gifts'
  else
    @errors = @gift.errors.full_messages
    erb :'gifts/edit'
  end
end

get '/gifts/:id/show' do
end

delete '/gifts/:id' do
end
