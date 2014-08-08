get '/' do

end

get '/logout' do
  session.clear
  redirect '/'
end
