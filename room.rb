class Room

  attr_reader :guests, :songs

  def initialize(type, space_limit, guests, songs)
    @type = type
    @space_limit = space_limit
    @guests = guests
    @songs = songs
  end

  def check_guests()
    return @guests.count <= @space_limit
  end

  def check_in(new_guests)
    for new_guest in new_guests do
      @guests << new_guest
    end  
  end

  def check_out(guests_to_leave)
    for guest_to_leave in guests_to_leave do
      @guests.delete_if {|guest| guest == guest_to_leave}
    end
  end

  def add_songs(new_songs)
    for new_song in new_songs do
      @songs << new_song
    end  
  end

end
