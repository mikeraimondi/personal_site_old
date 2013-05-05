#!/usr/bin/env ruby
require 'sinatra'

get '/' do
  erb :index
end

get '/projects' do
  'Projects go here'
end

not_found do
  status 404
  erb :not_found
end
