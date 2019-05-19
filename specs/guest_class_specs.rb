require('minitest/autorun')
require('minitest/rg')
require_relative('../guest_class.rb')
require_relative('../rooms_class.rb')

class TestGuest < MiniTest::Test
def setup
  @guest = Guest.new("Arledis Forbes", "Happy", "Pharrell Williams", 50)
  @room_1 = Room.new("The Snug", 3, @playlist, 10, @guests)
end

def test_guest_has_name
  assert_equal("Arledis Forbes", @guest.name)
end

def test_guest_has_favorite_song
  assert_equal("Happy", @guest.favorite_song)
end

def test_guest_has_favorite_song_artist
  assert_equal("Pharrell Williams", @guest.favorite_song_artist)
end
def test_guest_has_cash
  assert_equal(50, @guest.cash)
end

def test_guest_buy_entry
@guest.guest_buy_entry(@room_1)
assert_equal(40, @guest.cash)
end


end
