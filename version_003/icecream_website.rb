require 'sinatra'
require 'haml'
require 'thin'

get '/main_page' do
  @username = params[:username]
  @password = params[:password]
  
  if @username == "nate" && @password == "nate"
    haml :main_page
  elsif @username == "brain" && @password == "brain"
    haml :main_page
  else
    @message = "Username and/or Password are Invalid!!!"
    haml :login
  end
end

get '/main_page_back' do
  haml :main_page
end

get '/login' do
  haml :login
end

post '/login' do
  end

post '/main_page' do
  @route = params[:route]
  @driver = params[:driver]
  @item_1 = params[:item_1]
  @item_2 = params[:item_2]
  @item_3 = params[:item_3]
  @item_4 = params[:item_4]
  haml :display
end

not_found do
  status 404
  "The site doesn't exist dummy!!!"
end
