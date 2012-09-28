require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'tilt'
 
get '/' do
  @section = 'home' 
  @pagename = 'index'
  erb :index
end

get '/dr-christopher-vanderhoef/' do
  @section = 'our_team'
  @pagename = 'dr-christopher-vanderhoef'
  erb :index
end

get '/dr-jeffrey-hirsch/' do
  @section = 'our_team'
  @pagename = 'dr-jeffrey-hirsch'
  erb :index
end

get '/office-tour/' do
  @section = 'office_tour'
  @pagename = 'index'
  erb :index
end

get '/new-patients/' do
  @section = 'new_patients'
  @pagename = 'index'
  erb :index
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



__END__

@@ layout
<html>
<body>
<%= yield %>
</body>
</html>

@@ index
<div class='title'> Welcome. <%= @section %>/<%= @pagename %></div>

