require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    my_files = Dir.entries(@path) #.select {|file| file.scan(/[.]\w+/) == ".mp3"}
    return_files = []
    my_files.each do |file|
      result = file.scan(/[.]\w+/)
      binding.pry
      if file.scan(/[.]\w+/) == ".mp3"
        my_split = file.split(/[.]\w+/)
        binding.pry
        return_files << my_split
      end
      binding.pry
    end
  end

  def import

  end

end
