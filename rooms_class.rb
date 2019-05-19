class Room
  attr_accessor :room_name, :max_guests, :playlist, :entry_fee, :guests
  def initialize(room_name, max_guests, playlist, entry_fee, guests)
    @room_name = room_name
    @max_guests = max_guests
    @playlist = playlist
    @entry_fee = entry_fee
    @guests = guests
  end


def playlist_count
  return @room_1.playlist().length()
end

def guests_count_room_1
  return @room_1.guests.size()
end

def checkout_guest_to_room_1(room, guest)
  @room_1.guests.delete(guest)
end

def add_song_room(song)
  return @playlist.push(song)
end

# def guest_checkin_room_1
#   if (guests >= max_guests)
#     return "Sorry, we are full booked"
#   else
#     return "How Can I help u?"
#   end
# end


end
