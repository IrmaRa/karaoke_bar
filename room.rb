class Room

  attr_reader :songs, :entry_fee

  attr_accessor :guests

  def initialize(type, space_limit, guests, songs)
    @type = type
    @space_limit = space_limit
    @guests = []
    @songs = songs
    @entry_fee = 10
  end

  def check_guests(guests)
    return guests.count <= @space_limit
  end

  def check_in(new_guests)
    @guests << new_guests
  end  

  def check_out(guest_to_leave)
    @guests.delete_if {|guest| guest == guest_to_leave}
  end


  def add_songs(new_songs)
    for new_song in new_songs do
      @songs << new_song
    end  
  end

  def check_favourite_song(guest_song, song)
    result = guest_song == song ? "Whoo!" : nil
    return result
  end

end

