class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name=name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    self.detect.all {|artist| artist.name == name} || Artist.new(name)

  end
end
