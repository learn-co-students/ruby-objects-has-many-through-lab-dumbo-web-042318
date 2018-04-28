class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
    end 

    def add_song(song_name)
        @songs << song_name
        song_name.artist = self
    end 

    def songs
        @songs
    end 

    def genres
        self.songs.collect do |song|
            song.genre
        end 
    end 

end 