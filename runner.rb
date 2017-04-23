require_relative('guest')
require_relative('song')
require_relative('room')
require_relative('viewer')

class Runner

  def initialize(name, viewer)
    @name = name
    @viewer = viewer

  guest1 = Guest.new("Ben", 20, "Video Games
      ")
  guest2 = Guest.new("Liam", 8, "Cape Town")

  @guests = [guest1, guest2]

  song1 = Song.new("Video Games")
  song2 = Song.new("Blue Jeans")
  song3 = Song.new("Shades of Cool")
  song4 = Song.new("Summertime Sadness")

  songs = [song1, song2, song3, song4]

    @room_regular = Room.new("Regular", 10, @guests, songs)

  end

  def run(guests)
    for guest in @guests do



end

game = Runner.new(Viewer.new)
game.run()
