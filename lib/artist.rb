require 'pry'

class Artist

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

# takes in an argument of a song
# adds that song to the artist's collection of songs
# tell the song that it belongs to that artist
  def add_song(song)
    @songs << song
    song.artist = self
  end

# returns the `@songs` array

# iterates over that artist's songs
# collects the genre of each song
def genres
  @songs.collect do |artist_song|
    artist_song.genre
  end
end

end
