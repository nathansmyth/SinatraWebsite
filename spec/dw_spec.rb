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
    get '/our_team/dr-christopher-vanderhoef/'
    last_response.status.should == 200
  end

  # team page featuring dr. hirsch
  it 'should have a team page for dr hirsch' do
    get '/dental_services/dr-hirsch'
    last_response.status.should == 200
  end

  # office tour features a slideshow
  it 'should have an office tour' do
    get '/dental_services/'
    last_response.status.should == 200
  end

  # patients and reviews
  it 'should have a new patients section' do
    get '/new_patients/'
    last_response.status.should == 200
  end

  # contact section
  it 'should have a contact section home page' do
    get '/contact/'
    last_response.status.should == 200
  end

  # appointment request
  it 'should have a appointment section home page' do
    get '/appointment/'
    last_response.status.should == 200
  end

end

