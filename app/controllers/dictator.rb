get '/dictators/new' do
  @dictator = Dictator.new
  erb :'/dictators/new'
end

post '/dictators/create' do
  @dictator = Dictator.new(params[:dictator])
  if @dictator.valid?
    @dictator.save
    redirect '/dictators'
  else
    @errors = @dictator.errors
    erb :'/dictators/new'
  end
end

get '/dictators' do
  @dictators = Dictator.all
  erb :'dictators/index'
end

get '/dictators/:did' do
  @dictator = Dictator.find(params[:did])
  erb :'dictators/show'
end

put '/dictators/:did' do
  @dictator = Dictator.find(params[:did])
  @dictator.update(params[:dictator])
  if @dictator.valid?
end

get '/dictators/:did/edit' do
  @dictator = Dictator.find(params[:did])
  erb :'/dictators/edit'
end

delete '/dictators/:did' do
  @dictator = Dictator.find(params[:did])
  @dictator.destroy
  redirect '/dictators'
end
