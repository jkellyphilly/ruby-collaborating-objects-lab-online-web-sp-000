require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    my_files = Dir.entries(@path) #.select {|file| file.scan(/[.]\w+/) == ".mp3"}
    return_files = []
    my_files.each_with_index do |file|
      binding.pry
      if file.scan(/[.]\w+/) == ".mp3"
        my_split = file.split(/[.]\w+/)
        
      end
    end
  end

  def import

  end

end
