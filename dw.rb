require 'rubygems'
require 'bundler/setup'
require 'sinatra'
 
get '/' do
  @section = 'home' 
  @pagename = 'index'
  "Serving /#{@section}/#{@pagename}/"
end

get '/dr-christopher-vanderhoef/' do
  @section = 'our_team'
  @pagename = 'dr-christopher-vanderhoef'
end

get '/dr-jeffrey-hirsch/' do
  @section = 'our_team'
  @pagename = 'dr-jeffrey-hirsch'
end

get '/office-tour/' do
  @section = 'office_tour'
  @pagename = 'index'
end

get '/new-patients/' do
  @section = 'new_patients'
  @pagename = 'index'
end

get '/contact/' do
  @section = 'contact'
  @pagename = 'index'
end

get '/appointment/' do
  @section = 'appointment'
  @pagename = 'index'
end

get '/version' do
  "Dental Website, a ditty by Sinatra " + Sinatra::VERSION
end

