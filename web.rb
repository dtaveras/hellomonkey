require 'rubygems'
require 'sinatra'
require 'twilio-ruby'
 
get '/hello-monkey' do
  Twilio::TwiML::Response.new do |r|
    r.Say :voice => "woman", :plain_text => "Hello Monkey"
  end.text
end