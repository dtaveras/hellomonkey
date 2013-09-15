require 'rubygems'
require 'sinatra'
require 'twilio-ruby'
puts "hello"
get '/hello-monkey' do
  Twilio::TwiML::Response.new do |r|
     purple = r.Say :voice => "woman" do |m|
       m.body "ouchy ouchy ouchy"
     end
     puts "#{purple.inspect}"
  end
end

