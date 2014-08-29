# cowsay
# author: thibaultcha

require 'rubygems'
require 'bundler'

Bundler.require

before do
  content_type 'text/plain'
end

get '/think' do
  cow = Cow.new()
  body cow.say(params[:t] || "", 'think')
end

get '/say' do
 cow = Cow.new()
 body cow.say(params[:t] || "", 'say')
end
