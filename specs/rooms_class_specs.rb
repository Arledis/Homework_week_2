require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms_class.rb')
require_relative('../songs_class.rb')
require_relative('../guest_class.rb')


class TestRoom < MiniTest::Test
  def setup

    @song_1 = Song.new("Billie Jean", "Michael Jackson")
    @song_2 = Song.new("Dancing Queen", "ABBA")
    @song_3 = Song.new("We Will Rock You", "Queen")
    @song_4 = Song.new("We Are Champios", "Queen")
    @song_5 = Song.new("Beat it", "Michael Jackson")
    @guest_1 = Guest.new("Duncan MacAra", "Billie Jean", "Michael Jackson", 40)
    @guest_2 = Guest.new("Alison Welsh", "Havana", "Camila Cabello", 35)
    @guest_3 = Guest.new("Eva Welsh", "Crying in the Club", "Camila Cabello", 50)
    @guest_4 = Guest.new("Ben Mackintosh", "Havana", "Camila Cabello", 50)
    @guests = [@guest_1, @guest_2, @guest_3]
    @playlist = [@song_1, @song_2, @song_3]
    @rooms = Room.new("The Snug", 3, @playlist, 10, @guests)
    @room_1 = Room.new("The Snug", 3, @playlist, 10, @guests)
    @room_2 = Room.new("Boogie", 4, @playlist, 15, @guests)

  end
def test_room_1_has_name
assert_equal("The Snug", @room_1.room_name)
end

def test_room_2_has_name
  assert_equal("Boogie", @room_2.room_name)
end

def test_room_1_has_max_guests_number
assert_equal(3, @room_1.max_guests)
end

def test_guests_count
  assert_equal(3, @room_1.guests.length())
end

def test_room_2_has_max_guests_number
  assert_equal(4, @room_2.max_guests)
end

def test_room_1_cost_entry_fee
  assert_equal(10, @room_1.entry_fee)
end

def test_room_2_cost_entry_fee
  assert_equal(15, @room_2.entry_fee)
end


# guest checking in and checking out
# def test_guest_check_out_room_1
#   @rooms.checkout_guest_to_room_1(@room_1, @guest_3)
#   assert_equal(2, guests_count_room_1())
# end

# def test_add_song_to_room
#   @room_1.add_song_room(@song_5)
# assert_equal(4, add_song_room().length())
# end


end
