require_relative './spec_helper'
require_relative '../../lib/Sinatra/hello_world'

ENV['RACK_ENV'] = 'test'

describe "Test Hello world" do
 
  it "should return Hello World" do
    get '/hi'
    last_response.body.should == 'Hello World!'
  end
  
end