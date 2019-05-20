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
  return @playlist.length()
end

def guests_count
  return @guests.size()
end

def checkout_guest(guest)
  @guests.delete(guest)
end


def add_song_room(song)
  return @playlist.push(song) # here the arguments are placeholders.
end

def guest_checkin_room_1(guest)
  if (@guests.length >= @max_guests) # guest is a propiety of the instances of the class I don't need another argument
    return "Sorry, we are full booked"
  else
    @guests << guest # here I am conditioning the if statement by adding the second option if the first doesn't apply.
  end
end



end
