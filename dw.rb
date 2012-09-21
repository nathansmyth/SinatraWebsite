require 'rubygems'
 
get '/' do
  "Welcome"
end
 
get '/version' do
  "Dental Website, a ditty by Sinatra " + Sinatra::VERSION
end
