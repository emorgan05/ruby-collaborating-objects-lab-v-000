class MP3Importer
  attr_accessor :path

  @@mp3s = []

  def initialize(path)
    @path = path
  end

  def files
    file_array = Dir.entries(@path)
    file_array.select do |file|
      if file =~ /.mp3/
        @@mp3s << file
      end
    end
  end

  def import
    self.song = Song.new_by_filename(filename)
  end
end
