# cowsay
# author: thibaultcha

require 'rubygems'
require 'bundler'

Bundler.require

require './lib/FortuneCow.rb'

before do
  content_type 'text/plain'
end

get '/think' do
  FortuneCow.think({ :text => params[:t] })
end

get '/say' do
  FortuneCow.say({ :text => params[:t] })
end

not_found do
  FortuneCow.say({ :text => "404: Not found" })
end
