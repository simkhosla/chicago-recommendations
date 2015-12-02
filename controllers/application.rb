# defining the starting point for my Application
# this used to be app.rb -- but it got too convoluted
# now we're going to use controllers

class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require


  ActiveRecord::Base.establish_connection(
   :adapter => 'postgresql',
   :database => 'recommendations'
  )

  #I need to specify my views
  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)

  not_found do
    erb :not_found
  end



end
