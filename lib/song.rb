class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(file)
    array = file.split(/\s\-\s/)
    song = self.new(array[1])
    song.artist_name = array[0]
    song
  end

  def artist_name
    self.artist.name
  end
end
