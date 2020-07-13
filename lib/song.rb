class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name=name
    @artist=artist
    @@all << songs
  end

  def self.all
    @@all
  end 
end
