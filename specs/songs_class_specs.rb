require('minitest/autorun')
require('minitest/rg')
require_relative('../songs_class.rb')

class TestSong < MiniTest::Test

  def setup #setup helps the attr to access the info
    @song = Song.new("One", "U2")
  end

def test_song_has_title
  assert_equal("One", @song.title)
end

def test_song_get_artist
  assert_equal("U2", @song.artist)
end

end
