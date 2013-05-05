#!/usr/bin/env ruby
require 'sinatra'
require 'yaml'
require 'date'

require_relative 'me'

def test
  proj = Project.new('Test Project')
  proj.summary = '<strong>Rocked</strong> it'
  exp = Experience.new('Test Experience')
  me = {
    projects: [proj, Project.new('Test2')],
    experience: [exp]
  }
  File.open('me.yaml', 'w') do |out|
    YAML.dump(me, out)
  end
end
test()

me = YAML.load_file('me.yaml')

get '/' do
  @me = me
  erb :index
end

get '/projects' do
  'Projects go here'
end

not_found do
  status 404
  erb :not_found
end
