require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_bar')
require_relative('../room')
require_relative('../guest')
require_relative('../song')
require_relative('../bar')

class TestKaraokeBar < MiniTest::Test

  def setup 

    @guest1 = Guest.new("Ben", 10, "Video Games")
    @guest2 = Guest.new("Liam", 15, "Come With Me")
    @guest3 = Guest.new("Michael", 10, "Superhero")
    @guest4 = Guest.new("Robert", 15, "Summer")
    @guest5 = Guest.new("Peter", 30, "Follow Me")
    @guest6 = Guest.new("Brian", 40, "Love")
    @guest7 = Guest.new("Louise", 50, "White Tiger")
    @guest8 = Guest.new("Kate", 35, "West Coast")
    @guest9 = Guest.new("John", 10, "Sad girl")
    @guest10 = Guest.new("Nick", 20, "More Life")
    @guest11 = Guest.new("Peter", 5, "Sorry Not Sorry")
    @guest12 = Guest.new("Brian", 20, "Ultraviolence")


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


    @room_regular = Room.new("Regular", 10, [@guest1, @guest2, @guest3], [@song1, @song2, @song3, @song4, @song5])

    @room_party = Room.new("Party", 20, [@guest4, @guest5, @guest6, @guest7, @guest8], [@song1, @song2, @song3, @song4, @song5, @song6])

    @room_vip = Room.new("VIP", 5, [@guest9, @guest10, @guest11, @guest12], [@song1, @song2, @song3, @song4, @song5, @song6, @song7, @song8, @song9, @song10])


    @karaoke_bar = KaraokeBar.new("CodeClanCaraoke", [@room_regular, @room_party, @room_vip])

  end

  def test_karaoke_bar_can_have_a_name
    assert_equal("CodeClanCaraoke", @karaoke_bar.name)
  end

  def test_karaoke_bar_can_have_different_rooms
    different_rooms = [@room_regular, @room_party, @room_vip]
    assert_equal(different_rooms, @karaoke_bar.room_types)
  end

  def test_can_guests_pay_entry_fee_returns_true
    actual = @karaoke_bar.pay_entry_fee(@guest1.money)
    assert_equal(true, actual)
  end

  def test_can_guests_pay_entry_fee_returns_false
    guest = Guest.new("Liam", 5, "Come With Me")
    actual = @karaoke_bar.pay_entry_fee(guest.money)
    assert_equal(false, actual)
  end

  def test_can_check_how_much_money_gets_from_one_room
    actual = @karaoke_bar.count_income(@room_regular.guests.length)
    assert_equal(30, actual)
  end

  def test_can_check_how_much_money_gets_from_all_rooms
    all_guests = @room_regular.guests.length + @room_party.guests.length + @room_vip.guests.length
    actual = @karaoke_bar.count_income(all_guests)
    assert_equal(120, actual)
  end

  def test_can_add_drinks_to_room_bill
    bar_menu = Bar.new({soft: 3, beer: 5, cocktail: 8})
    order_total = bar_menu.drinks.values[1] * 3 +
    bar_menu.drinks.values[2] * 2
    actual = bar_menu.add_drink_bill(order_total)
    assert_equal(31, actual)
  end

  def test_can_add_entry_fee_to_room_bill
    guests_total = @room_regular.guests.length
    actual = @karaoke_bar.add_entry_fee(guests_total)
    assert_equal(30, actual)


  end



end 