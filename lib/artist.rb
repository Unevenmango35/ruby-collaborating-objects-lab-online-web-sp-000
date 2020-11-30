class Artist
  attr_accessor :name, :songs
  @@all = []

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
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

    def self.find_or_create_by_name(name)
      artist = @@all.find {|artist| artist.name == name}
      if artist == nil
        artist = Artist.new(name)
        artist.save
      end
      @@all.last
    end

    def print_songs
      @songs.each{|song| print "#{song}"}
    end

end
