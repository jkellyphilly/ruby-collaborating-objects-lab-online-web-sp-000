class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir.entries(@path).select {|file| file.extname == ".mp3"}
  end

  def import

  end

end
