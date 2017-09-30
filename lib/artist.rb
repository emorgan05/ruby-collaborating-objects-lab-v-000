class Artist
  attr_accessor :name

  @@all_artists = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def save
    @@all_artists << self
  end

  def self.find_or_create_by_name
  end

  def print_songs
    puts self.songs
  end
end
