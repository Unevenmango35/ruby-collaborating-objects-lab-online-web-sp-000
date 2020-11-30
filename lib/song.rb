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
    array = filename.split(/[-,]/)
    @artist = array[0].strip
    @song_name = array[1].strip
    @song = Song.new(@song_name)
    @artist = Artist.find_or_create_by_name(@artist)
    @song.artist = @artist
    @artist.add_song(@song)
     #binding.pry
    @song
  end

  def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
     artist.add_song(self)
    end


end
