require 'rubygems'
require 'sinatra'
require 'tilt'
 
set :run, false
set :environment, :production
set :views, '/home/mainstreetdental2/mainstreetdental.tothenthdesign.com'
 
# logging
FileUtils.mkdir_p 'log' unless File.exists?('log')
log = File.new("log/sinatra.log", "a")
$stdout.reopen(log)
$stderr.reopen(log)
 
require 'dw'
run Sinatra::Application
