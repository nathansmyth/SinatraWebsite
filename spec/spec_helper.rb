require 'rspec'
require 'rack/test'

begin 
  require_relative '../../dw.rb'
rescue NameError
  require File.expand_path('../../dw.rb', __FILE__)
end

# setup test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

RSpec.configure { |c| c.include RSpecMixin }

