require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    my_files = Dir.entries(@path) #.select {|file| file.scan(/[.]\w+/) == ".mp3"}
    my_files.each do |file|
      if file.scan(/[.]\w+/)
    end
  end

  def import

  end

end
