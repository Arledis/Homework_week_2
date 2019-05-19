class Guest
  attr_reader :name, :favorite_song, :favorite_song_artist
  attr_accessor :cash
  def initialize(name, favorite_song, favorite_song_artist, cash)
    @name = name
    @favorite_song = favorite_song
    @favorite_song_artist = favorite_song_artist
    @cash = cash
  end

  def guest_buy_entry(room_1)
    @cash -= room_1.entry_fee
  end

  
end
