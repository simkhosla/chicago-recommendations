class RecsController < ApplicationController

    get '/' do
      @recs = Recs.all
      erb :recs
    end

    get '/search' do
      erb :search
    end

    get '/api' do
      @recs = Recs.all

      @recs.to_json

    end

    get '/api/:id' do

      return Recs.find(params[:id]).to_json

    end

    get '/create' do
      erb :create_rec
    end

    post '/create' do
      @new_rec = Recs.new
      @new_rec.place = params[:place]
      @new_rec.contributor = params[:contributor]
      @new_rec.type_of_place = params[:type_of_place]
      @new_rec.notes = params[:notes]

      if @new_rec.save
      erb :recs

      else
      erb :create_rec
    end
    end

    get '/search' do
      erb :search
    end

end
