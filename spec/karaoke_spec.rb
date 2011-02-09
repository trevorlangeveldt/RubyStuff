require 'rspec'
require_relative '../lib/karaoke'

describe "This is a karaoke test" do
  it "should have lyrics included" do
    @karaoke = Karaoke.new("Reise Reise", "Ramstein", 473, "These are the lyrics in English")
    
    @karaoke.to_s.should == "Song: Reise Reise, --Ramstein, --473, These are the lyrics in English"
  end    
end