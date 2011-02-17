class Song
  #Class variable - combination of Instance + Static properties
  #ie. class has to be instantiated but all instances share this attribute
  @@total_played = 0  #class variable

  attr_reader :name, :artist
  attr_accessor :duration
  #attr_writer :duration

  def initialize(name, artist, duration)
    @name = name        #instance variables
    @artist = artist
    @duration = duration
    @times_played = 0
  end

  #Uniform Access Principle
  def duration_in_minutes
    @duration/60.0
  end

  def duration_in_minutes=(value)
    @duration = (value*60).to_i
  end

  def play
    @times_played += 1  # only this instance has access to this data
    @@total_played += 1 # all instances share this data
  end

  def times_played
    "This song: #{@times_played} plays. Total: #{@@total_played} plays"
  end

  def to_s
    "Song: #{@name}, --#{@artist}, --#{@duration}"
  end
end