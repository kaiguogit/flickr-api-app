require 'sinatra'
require "sinatra/json"
require 'dotenv'
Dotenv.load

set :port, 3000
set :bind, '0.0.0.0'

get "/" do
  erb :"index"
end

get "/api_key" do
  json({api_key: ENV['api_key'],
        secret: ENV['secret']})
end
