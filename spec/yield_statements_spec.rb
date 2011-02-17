require 'rspec'
require './lib/yield_statements'

describe "Fibonacci numbers" do
  it "should display fibonacci members up until 100" do
    @var = YieldStatements.new
    @var.fibonacci(100) { |f| print f, " " } #print outputs to a single line whereas puts outputs to multiple lines
  end
end