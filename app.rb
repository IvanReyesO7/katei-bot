require "sinatra"

get "/" do
  "<h1>Hello, world!</h1>"
end
post 'webhook' do
  puts request.body.read
end