require 'sinatra/base'
require './controllers/application'
#applicationcontroller should always be loaded FIRST
require './controllers/recs.rb'
require './models/recs'

map('/') { run RecsController }
