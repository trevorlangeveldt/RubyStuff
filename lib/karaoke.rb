require_relative './song'

class Karaoke < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration) #Call the superset (actually the subset)
    @lyrics = lyrics
  end

  def to_s
    super + ", #{@lyrics}"
  end
end
