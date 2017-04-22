class KaraokeBar

  attr_reader :name, :room_types, :entry_fee,
  :room_regular, :room_party, :room_vip

  attr_accessor :income, :room_regular_bill, :room_party_bill, :room_vip_bill

  def initialize(name, room_types)
    @name = name
    @room_types = room_types
    @entry_fee = 10
    @income = 0
    @room_regular = room_regular
    @room_party = room_party
    @room_vip = room_vip
    @room_regular_bill = 0
    @room_party = 0
    @room_vip = 0

  end

  def pay_entry_fee(guest_money)
    return guest_money >= @entry_fee
  end

  def count_income(guests)
    return guests * @entry_fee
  end

  def add_drink_bill(order_total)
    bill = room_regular_bill + order_total
    return bill
  end

  def add_entry_fee(guests)
    entry_fee_cost = guests * @entry_fee
    charge_added_bill = entry_fee_cost + @room_regular_bill
    return charge_added_bill
  end

  def calculate_venue_income(order_total, guests)
    total_bill = add_drink_bill(order_total) +add_entry_fee(guests)
    venue_income_of_the_night = total_bill + @income
    return venue_income_of_the_night

  end

end