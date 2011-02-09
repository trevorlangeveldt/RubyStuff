require 'rspec'

require_relative '../lib/song_list'
require_relative '../lib/song'

describe "Class/static methods" do

  before(:all) do
    @song1 = Song.new("Songname1", "Artistname1", 209)
    @song2 = Song.new("Songname2", "Artistname2", 496)
    @song3 = Song.new("Songname3", "Artistname3", 74)
    @song4 = Song.new("Songname4", "Artistname4", 724)
        
  end
  
  before(:each) do
    @list = SongList.new
    @list.append(@song1).append(@song2).append(@song3).append(@song4)
  end

  it "should execute without instance being created" do
    SongList.is_too_long(@song1).should == false
    SongList.is_too_long(@song2).should == true
  end

  it "should push/append multiple songs to the end of the songlist" do
    @list.songs[0].to_s.should == @song1.to_s
    @list::songs[3].to_s.should == @song4.to_s
    
    @list::delete_first.should == @song1  #shift removes first
    @list::delete_last.should == @song4   #pop removes last
    
    @list.songs[0].to_s.should == @song2.to_s
    @list.delete_last.should == @song3
    @list.delete_last.should == @song2
  end
  
  it "should return corresponding item" do
    @list[1].should == @song2
  end
end