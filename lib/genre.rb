class Genre

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

# instance method
# takes in an argument of a song
# adds that song to the genre's collection of songs
  def add_song(song)
    @songs << song
  end

# instance method
# returns the `@songs` array

  # instance method
  # iterates over the genre's collection of songs and
  # collects the artist that owns each song
  def artists
    @songs.collect do |x|
      x.artist
  end
end

end
