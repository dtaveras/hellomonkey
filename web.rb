require 'rubygems'
require 'sinatra'
require 'twilio-ruby'
 
get '/hello-monkey' do
  Twilio::TwiML::Response.new :voice => "woman" do |r|
    r.Say 'Hello Monkey'
  end.text
end