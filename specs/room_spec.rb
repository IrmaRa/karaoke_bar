require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')


class TestRoom < MiniTest::Test

  def setup

    @guest1 = Guest.new("Ben", 20, "Video Games
        ")
    @guest2 = Guest.new("Liam", 8, "Cape Town")
    @guest3 = Guest.new("Peter", 100, "Takeover")
    @guest4 = Guest.new("Brian", 60, "Blue Jeans")

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

    @room_regular = Room.new("Regular", 10, [], songs)

end

def test_can_check_in_guests_returns_true
    guests = [@guest1, @guest2]
    songs = [@song1, @song2, @song3]
    room_small = Room.new("Small", 3, guests, songs)
    assert_equal(true, room_small.check_guests(guests))
end

def test_can_not_check_in_guests_returns_false
    guests = [@guest1, @guest2, @guest3, @guest4]
    songs = [@song1, @song2, @song3]
    room_small = Room.new("Small", 3, guests, songs)
    assert_equal(false, room_small.check_guests(guests))
end

def test_can_add_guest_to_the_room
    @room_regular.check_in(@guest1)
    assert_equal(1, @room_regular.guests.length)
end

def test_can_add_a_group_of_guests_to_the_room
    @room_regular.check_in(@guest1)
    @room_regular.check_in(@guest2)
    @room_regular.check_in(@guest3)
    assert_equal(3, @room_regular.guests.length)
end


def test_can_check_out_guest
   @room_regular.check_out(@guest1)
   assert_equal(0, @room_regular.guests.length)
end

def test_can_check_out_part_of_the_group
    @room_regular.check_in(@guest1)
    @room_regular.check_in(@guest2)
    @room_regular.check_out(@guest1)
    assert_equal(1, @room_regular.guests.length)

end

def test_guest_can_add_songs
    new_song1 = Song.new("Lust For Life")
    new_song2 = Song.new("Love")
    new_songs = [new_song1, new_song2]
    @room_regular.add_songs(new_songs)
    assert_equal(12, @room_regular.songs.length)
end

def test_can_check_guest_favourite_song_is_on_the_list
    actual = @room_regular.check_favourite_song("Video Games", @song1.name)
    assert_equal("Whoo!", actual)
end

def test_can_check_guest_favourite_song_is_not_on_the_list
    actual = @room_regular.check_favourite_song("Love", @song1.name)
    assert_equal(nil, actual)
end

end
