require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')



class TestGuest < MiniTest::Test

  def test_guest_has_a_name
    guest = Guest.new("Ben")
    assert_equal("Ben", guest.name)
  end

end