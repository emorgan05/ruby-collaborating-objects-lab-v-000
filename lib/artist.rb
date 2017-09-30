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
    result = nil
    @@all.detect do |artist| 
      result = artist if artist.name == name
    end
    if result == nil
      artist = self.new(name)
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
