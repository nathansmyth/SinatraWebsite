require File.dirname(__FILE__) + '/spec_helper'

describe 'DentalWebsite' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  # home page features a slideshow linking to sections of the website
  it 'should have a home page' do
    get '/'
    last_response.should be_ok
  end
  it 'should have a slideshow acting as main navigation' do
    get '/'
    last_response.body.should match(/ul id=/)
  end
  it 'should have some images' do
    get '/'
    last_response.body.should match(/img/)
  end

  # team page featuring dr. vanderhoef
  it 'should have a team page for dr vanderhoef' do
    get '/dr-christopher-vanderhoef/'
    last_response.should be_ok
  end

  # team page featuring dr. hirsch
  it 'should have a team page for dr hirsch' do
    get '/dr-jeffrey-hirsch/'
    last_response.should be_ok
  end

  # office tour features a slideshow
  it 'should have an office tour' do
    get '/office-tour/'
    last_response.should be_ok
  end

  # patients and reviews
  it 'should have a new patients section' do
    get '/new-patients/'
    last_response.should be_ok
  end

  # contact section
  it 'should have a contact section home page' do
    get '/contact/'
    last_response.should be_ok
  end

  # appointment request
  it 'should have an appointment section home page' do
    get '/appointment/'
    last_response.should be_ok
  end

end

