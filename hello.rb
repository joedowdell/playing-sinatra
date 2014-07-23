require 'sinatra'

get '/' do
	@name = %w(Kirstie, Isla, Rudi).sample
	erb :index
end

get '/secret' do
	'This is a secret page'
end

get '/hello' do
	@visitor = params[:name]
	erb :index
end
