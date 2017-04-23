require_relative('./guest')
require_relative('./song')
require_relative('./room')
require_relative('./viewer')
require_relative('./karaoke_bar')

class Runner

  def initialize(viewer)
    @viewer = viewer


    @guest1 = Guest.new(@viewer.get_guest_name, @viewer.check_guest_money, "Video Games
      ")


    song1 = Song.new("Video Games")
    song2 = Song.new("Blue Jeans")
    song3 = Song.new("Shades of Cool")
    song4 = Song.new("Summertime Sadness")

    songs = [song1, song2, song3, song4]

    @room_regular = Room.new("Regular", 10, [], songs)

  end

  def run()
    @viewer.add_guest(@room_regular.check_in(@guest1.name))
  end

end

karaoke = Runner.new(Viewer.new)
karaoke.run()
