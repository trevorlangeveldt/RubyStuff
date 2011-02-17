require 'rspec'
require './lib/concepts/mixin_modules.rb'

describe "should make module methods available to instantiated class" do
  
  it "should execute methods on the module" do
    @var = Child.new
    @var.say_hello.should == "Hello World!"    
  end
  
  it "should extend object to include module" do
    @obj = "This is a test"                   # Create an object
    @obj.extend Parent                        # Extend the object by mixin in the module
    @obj.say_hello.should == "Hello World!"   # Execute method on the module 
  end

end
