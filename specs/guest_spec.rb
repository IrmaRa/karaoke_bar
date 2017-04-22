require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')



class TestGuest < MiniTest::Test

  def test_guest_has_a_name
    guest = Guest.new("Ben", 50, "Tennis Court")
    assert_equal("Ben", guest.name)
  end

  def test_guest_has_money
    guest = Guest.new("Ben", 50, "Come With Me")
    assert_equal(50, guest.money)
  end

  def test_guest_has_favourite_song
    guest = Guest.new("Ben", 50, "Come With Me")
    assert_equal("Come With Me", guest.favourite_song)
  end

end