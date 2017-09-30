class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    array = file.split(/\s\-\s/)
    song = self.new(array[1])
    song.artist = array[0]
  end
end
