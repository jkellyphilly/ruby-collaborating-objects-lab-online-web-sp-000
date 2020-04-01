class Artist

  attr_accessor :name

  @@all

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all == [] ? nil : Song.all.select {|song| song.artist == self}
  end

  def print_songs

  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist)

  end

end
