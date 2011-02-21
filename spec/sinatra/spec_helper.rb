require 'rspec'
require 'rack/test'

require_relative '../../lib/Sinatra/hello_world'

module RSpecMixinExample
  include Rack::Test::Methods
  def app() 
    Sinatra::Application 
  end
end

RSpec.configure { |c| c.include RSpecMixinExample }