require 'rspec'
require_relative '../lib/song'

describe "New song" do
  before(:all) do
    @song1 = Song.new("Sugarman", "Rodriguez", 260)
    @song2 = Song.new("Whatever", "Who", 430)
  end

  it "should initialize with name, artist and duration set" do
    @song1.name.should == "Sugarman"
  end

  it "to_s should return" do
    @song1.to_s.should == "Song: Sugarman, --Rodriguez, --260"
  end

  it "times played should increment for each play" do
    @song1.play
    @song1.times_played.should == "This song: 1 plays. Total: 1 plays"
    @song2.play
    @song2.times_played.should == "This song: 1 plays. Total: 2 plays"
    @song1.play
    @song1.times_played.should == "This song: 2 plays. Total: 3 plays"
  end
end