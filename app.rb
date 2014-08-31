# cowsay
# author: thibaultcha

require_relative 'lib/FortuneCow.rb'

helpers do
  def serialize_params(params)
    {
      :text => params[:t],
      :random_cow => params[:r].to_s != "",
      :face_type => params[:face],
      :cow => params[:cow]
    }
  end
end

before do
  content_type 'text/plain'
end

get '/' do
  FortuneCow::say_fortune
end

get '/think' do
  FortuneCow::think(serialize_params(params))
end

get '/say' do
  FortuneCow::say(serialize_params(params))
end

get '/random' do
  FortuneCow::random
end

get '/cows' do
  "#{FortuneCow::cows.join("\n")}"
end

get '/faces' do
  "#{FortuneCow::faces.join("\n")}"
end

not_found do
  FortuneCow.say({ :text => "404: Not found" })
end
