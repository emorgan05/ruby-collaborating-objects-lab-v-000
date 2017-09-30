class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.include?(name)
      name
    else
      artist = self.new(name)
    end
  end

  def print_songs
    puts self.songs
  end
end
