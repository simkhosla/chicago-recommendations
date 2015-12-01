require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
 :adapter => 'postgresql',
 :database => 'recommendations'
)


get '/' do
  return 'test'
end


get '/api' do

  @recs = Recs.all

  @recs.to_json

end
