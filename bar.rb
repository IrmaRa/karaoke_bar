class Bar

  attr_reader :drinks

  attr_accessor :guest_order

  def initialize(drinks)
    @drinks = drinks
    @guest_order = 0
  end

  def add_drink_bill(order_total)
    bill = @guest_order + order_total
    return bill
  end

end