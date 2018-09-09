require 'sinatra'
require 'json'

get '/' do
  "Hello World"
end

post '/payload' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
end
