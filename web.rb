require 'rubygems'
require 'sinatra'
require 'twilio-ruby'
 
get '/hello-monkey' do
  Twilio::TwiML::Response.new do |r|
    r.Say :voice => "woman" do |p|
      p.plain text "hello monkey"
    end
  end.text
end