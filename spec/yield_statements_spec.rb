require 'rspec'
require './lib/yield_statements'

describe "Fibonacci numbers" do
  it "should display fibonacci members up until 100" do
    @g = YieldStatements.new
    @g.fibonacci(100) { |f| print f, " " }
  end
end