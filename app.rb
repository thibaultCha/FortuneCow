# cowsay
# author: thibaultcha

require './lib/FortuneCow.rb'

before do
  content_type 'text/plain'
end

get '/' do
  FortuneCow.say_fortune
end

get '/think' do
  FortuneCow.think({ :text => params[:t] })
end

get '/say' do
  FortuneCow.say({ :text => params[:t] })
end

get '/random' do
  FortuneCow.random
end

not_found do
  FortuneCow.say({ :text => "404: Not found" })
end
