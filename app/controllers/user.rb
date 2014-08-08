get '/' do
  erb :'users/login'
end

post '/login' do
  @user = User.find_by_email(params[:email])
  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    redirect '/dictators'
  else
    @errors = @user.errors
    erb :'users/login'
  end
  erb :'users/login'
end

post '/signup' do
  @user = User.create(email: params[:email], password: params[:password])
  if @user.valid?
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = @user.errors
    erb :'users/login'
  end
end
