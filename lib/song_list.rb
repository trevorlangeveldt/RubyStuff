class SongList
  MaxTime = 5*60   #Constant - always start with uppercase
  attr_reader :songs

  def initialize
    @songs = Array.new
  end

  def [] (key)
    return @songs[key] if key.kind_of?(Integer)
    return @songs.find { |song| key == song.name }  #Lambda function
  #else     
  #  for i in 0...@songs.length
  #    return @songs[i] if key == @songs[i].name
  #  end
  end
  
  def append(song)
    @songs.push(song)
    self
  end

  def delete_first
    @songs.shift
  end

  def delete_last
    @songs.pop
  end

  #class methods are like static methods
  def SongList.is_too_long(song)
    song.duration > MaxTime
  end
end