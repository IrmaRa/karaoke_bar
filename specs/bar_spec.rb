require('minitest/autorun')
require('minitest/rg')
require_relative('../bar')

class TestBar < MiniTest::Test

  def setup
    @bar_menu = Bar.new({soft: 3, beer: 5, cocktail: 8})
  end

  def test_bar_has_different_drinks
    assert_equal({soft: 3, beer: 5, cocktail: 8}, @bar_menu.drinks)
  end

  def test_can_check_drink_price
    assert_equal(3, @bar_menu.drinks.values[0])
  end

  def test_can_count_how_much_spent_on_drinks
    order_total = @bar_menu.drinks.values[0] +
    @bar_menu.drinks.values[1]
    actual = @bar_menu.add_drink_bill(order_total)
    assert_equal(8, actual)
  end

  def test_can_count_how_much_spent_on_more_drinks
    order_total = (@bar_menu.drinks.values[1] +
    @bar_menu.drinks.values[2]) * 2
    actual = @bar_menu.add_drink_bill(order_total)
    assert_equal(26, actual)
  end

end