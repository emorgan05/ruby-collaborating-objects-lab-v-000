class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    file_array = Dir.entries(@path)
    file_array.select do |file|
      file =~ /.mp3/
    end
  end

  def import
    Song.new_by_filename()
  end
end
