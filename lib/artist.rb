class Artist
  attr_accessor :name, :songs
  @@all = []

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
      @songs
    end

    def self.all
        @@all
      end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def save
      @@all << self
    end

  

end
