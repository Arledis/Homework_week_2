class Room
  attr_accessor :room_name, :max_guests, :playlist, :entry_fee, :guests, :karaoke_till
  def initialize(room_name, max_guests, playlist, entry_fee, guests)
    @room_name = room_name
    @max_guests = max_guests
    @playlist = playlist
    @entry_fee = entry_fee
    @guests = guests
    @karaoke_till = 0
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

def guest_checkin(guest)
  if (@guests.length >= @max_guests) # guest is a propiety of the instances of the class I don't need another argument
    return "Sorry, we are full booked"
  else
    guest.guest_buy_entry(@entry_fee)
    @guests << guest # here I am conditioning the if statement by adding the second option if the first doesn't apply.
    @karaoke_till += @entry_fee #adding here my till propiety and adding the money that was removed from the guest.
    # this translates as "if the number of guests do exceed my maximum number of guests in that especific room return "full boooked"
    # otherwise, call my function where the guest buy an entry using the argument "entry_fee" and add the guest to the array of guests in test_room_2_has_name
    # and, also increase the till money using the variable entry_fee which should be called as a propiety with the @ as it will never change and it has been initialize.
    # so, check if there is capacity in the room, if its full then no sale entry, if not customer buy entry and reduce money, add guest to room and increase the money in the till.

  end
end


end
