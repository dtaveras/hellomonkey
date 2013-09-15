require 'rubygems'
require 'sinatra'
require 'twilio-ruby'
 
get '/hello-monkey' do
=begin
  Twilio::TwiML::Response.new do |r|
     r.Say :voice => "woman" do |m|
       m.body "ouchy ouchy ouchy"
    end
  end.text
=end
Twilio::TwiML::Response.new do |r|
     r.Say "Hello Delvis youre the king"
end
end.text