require 'sinatra'
require 'shotgun' if development?

require 'haml'
require 'json'

before do
  redirect request.url.sub(/www\./, ''), 301 if request.host =~ /^www/
end


#roots
get '/' do  
  haml :index  
end

get '/home' do
  'home'
end

post '/api' do
  @email = params[:email]
  
  content_type :json
  	{:email => @mail }.to_json 
end



