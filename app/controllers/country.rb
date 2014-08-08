get '/dictators/:did/countries/new' do
  @dictator = Dictator.find(params[:did])
  erb :'countries/new'
end

post '/dictators/:did/countries/create' do
  @dictator = Dictator.find(params[:did])
  @country = @dictator.countries.new(params[:country])
  if @dictator.valid?
    @dictator.save
    redirect '/dictators/:did/countries'
  else
    @errors = @dictator.errors
    erb :'countries/new'
  end
end

get '/dictators/:did/countries' do
  @dictators = Dictator.all
  erb :'countries/index'
end

get '/dictators/:did/countries/:cid' do
  @dictator = Dictator.find(params[:did])
  erb :'countries/show'
end

put '/dictators/:did/countries/:cid' do
  @dictator = Dictator.find(params[:did])
  @dictator.update(params[:dictator])
end

get '/dictators/:did/countries/:cid/edit' do
  @dictator = Dictator.find(params[:did])
  erb :'countries/edit'
end

delete '/dictators/:did/countries/:cid' do
  @dictator = Dictator.find(params[:did])
  @dictator.destroy
  redirect '/dictators'
end
