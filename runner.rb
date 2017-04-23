require_relative('./guest')
require_relative('./song')
require_relative('./room')
require_relative('./viewer')

class Runner

  def initialize(viewer)
    @viewer = viewer

    guest_1_name = @viewer.get_guest_name(1)
    guest_2_name = @viewer.get_guest_name(2)

    guest1 = Guest.new(guest_1_name, 20, "Video Games
      ")
    guest2 = Guest.new(guest_2_name, 8, "Cape Town")

    guests = [guest1, guest2]

    song1 = Song.new("Video Games")
    song2 = Song.new("Blue Jeans")
    song3 = Song.new("Shades of Cool")
    song4 = Song.new("Summertime Sadness")

    songs = [song1, song2, song3, song4]

    room_regular = Room.new("Regular", 10, guests, songs)

  end

end

karaoke = Runner.new(Viewer.new)
