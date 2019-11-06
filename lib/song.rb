# Song belongs to an artist
# has artist attr

class Song
  # attr_writer :artist

  def initialize(song_name)

  end

  def artist=(artist_obj)
    # 1) set song obj artist attr
    @artist = artist_obj
    # binding.pry

    # 2) tell the artist about its song
    artist_obj.songs.push(self)
  end
end