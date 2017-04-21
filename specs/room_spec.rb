require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../song')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup

    @guest1 = Guest.new("Ben")
    @guest2 = Guest.new("Liam")
    @guest3 = Guest.new("Peter")
    @guest4 = Guest.new("Brian")

    guests = [@guest1, @guest2, @guest3, @guest4]

    @song1 = Song.new("Video Games")
    @song2 = Song.new("Blue Jeans")
    @song3 = Song.new("Shades of Cool")
    @song4 = Song.new("Summertime Sadness")
    @song5 = Song.new("West Coast")
    @song6 = Song.new("Sad Girl")
    @song7 = Song.new("Cruel World")
    @song8 = Song.new("Brooklyn Baby")
    @song9 = Song.new("Young and Beautiful")
    @song10 = Song.new("Ultraviolence")

    songs = [@song1, @song2, @song3, @song4, @song5, @song6, @song7, @song8, @song9, @song10]

    @room_regular = Room.new("Regular", 10, guests, songs)

end

def test_can_check_in_guests_returns_true
    assert_equal(true, @room_regular.check_guests())
end

def test_can_not_check_in_guests_returns_false
    guest1 = Guest.new("Mark")
    guest2 = Guest.new("Kate")
    guest3 = Guest.new("Olivia")
    guest4 = Guest.new("Jack")
    guests = [guest1, guest2, guest3, guest4]
    song1 = Song.new("Video Games")
    song2 = Song.new("Blue Jeans")
    song3 = Song.new("Shades of Cool")
    songs = [song1, song2, song3]
    room_small = Room.new("Small", 3, guests, songs)
    assert_equal(false, room_small.check_guests())
end

def test_can_add_guest_to_the_room
    new_guest1 = Guest.new("Mike")
    new_guests = [new_guest1]
    @room_regular.check_in(new_guests)
    assert_equal(5, @room_regular.guests.length)
end

def test_can_add_a_group_of_guests_to_the_room  
    new_guest1 = Guest.new("Mike")
    new_guest2 = Guest.new("Caroline")
    new_guest3 = Guest.new("Andy")
    new_guests = [new_guest1, new_guest2, new_guest3]
    @room_regular.check_in(new_guests)
    assert_equal(7, @room_regular.guests.length)
end

def test_can_check_out_guest_from_the_room
    @room_regular.check_out([@guest1])
    assert_equal(3, @room_regular.guests.length)
end

def test_can_check_out_all_guests_from_the_room_at_the_same_time
   guests = [@guest1, @guest2, @guest3, @guest4]
   @room_regular.check_out(guests)
   assert_equal(0, @room_regular.guests.length)
end

def test_guest_can_add_songs
    new_song1 = Song.new("Lust For Life")
    new_song2 = Song.new("Love")
    new_songs = [new_song1, new_song2]
    @room_regular.add_songs(new_songs)
    assert_equal(12, @room_regular.songs.length)
end

end
