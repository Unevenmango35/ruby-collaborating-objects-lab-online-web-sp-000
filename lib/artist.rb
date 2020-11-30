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
      if self.find(name)
        self.find(name)
      else self.create(name)
      end
    end

    def self.create(name)
      artist = Artist.new(name)
      artist.save
      artist
    end

    def self.find(name)
      self.all.detect {|artist| artist.name == name}
    end

    def print_songs
      @songs.each {|song| puts song.name}
    end

end
