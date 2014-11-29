ENV['RACK_ENV'] = 'test'

require 'bundler/setup'
require 'test/unit'
require 'rack/test'

OUTER_APP = Rack::Builder.parse_file('config.ru').first

class FortuneCowTests < Test::Unit::TestCase
  include Rack::Test::Methods

  @@think = File.read("./tests/fixtures/think")
  @@say = File.read("./tests/fixtures/say")

  def app
    OUTER_APP
  end

  def test_root
    get '/'
    assert last_response.ok?
  end

  def test_think
    get '/think', :t => "Hello World"
    assert last_response.ok?
    assert_equal @@think, last_response.body
  end

  def test_say
    get '/say', :t => "Hello World"
    assert last_response.ok?
    assert_equal @@say, last_response.body
  end

  def test_random
    get '/random'
    assert last_response.ok?
  end

end
