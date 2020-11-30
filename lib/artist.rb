class Artist
  attr_accessor :name
  @@all = []

  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end


  def self.all
    @@all
  end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist = self
  end


  def songs
    Song.all.select {|songs| songs.artist == self}
  end

end
