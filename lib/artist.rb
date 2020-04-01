class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    @@all.find {|artist| artist.name == artist_name} == nil
      self.new(artist_name)
    else
      @@all.find {|artist| artist.name == artist_name}
    end
  end

end
