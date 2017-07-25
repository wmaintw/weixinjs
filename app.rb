require 'sinatra'
require 'sinatra/json'
require "sinatra/cross_origin"

set :bind, '0.0.0.0'

register Sinatra::CrossOrigin

configure do
  enable :cross_origin
end

get '/' do
  'Hello world!'
end

get '/MP_verify_wgfP9TQrL5BVVw9r.txt' do
  send_file File.read(File.join('public', 'MP_verify_wgfP9TQrL5BVVw9r.txt'))
end

options "*" do
  response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
  response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
  200
end
