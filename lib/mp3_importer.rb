class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    my_files = Dir.entries(@path) #.select {|file| file.scan(/[.]\w+/) == ".mp3"}
    puts my_files.class
  end

  def import

  end

end
