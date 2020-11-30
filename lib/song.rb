require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    song.artist = filename.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
  #  binding.pry
    new_song.save
  end

  def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
    end

    def save
        @@all << self
        @self
      end

end
