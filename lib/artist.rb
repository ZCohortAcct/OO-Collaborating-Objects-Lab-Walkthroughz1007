class Artist
  # associations Arist has_many songs
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(artist_name)
    @name = artist_name
    @@all << self # self refers to the newly created instance
    @songs = [] # should/will contain a collection of song OBJS 
  end

  def self.all
    @@all
  end

  def add_song(song_obj)
    # need to work with the songs attr, line 53 in test spec
    # must add song_obj to songs arr
    @songs << song_obj
  end

  def self.find_or_create_by_name(art_name)
     # method should return a Artist instance
    self.find_by_name(art_name) || self.create_by_name(art_name)
  end

  def self.find_by_name(str)
    # 1) need to access ALL artist objs ~> @@all
    # 2) iterator over arr & find obj that MIGHT name the str arg
    @@all.detect {|obj| obj.name == str}
  end

  def self.create_by_name(str)
    self.new(str) # == Artist.new
  end
end