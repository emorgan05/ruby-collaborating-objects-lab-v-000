class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.include?(name)
      self
    else
      artist = self.new(name)
      artist.save
    end
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def print_songs
    self.songs.each do |name|
      puts @name
    end
  end
end
