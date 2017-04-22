class KaraokeBar

  attr_reader :name, :room_types, :entry_fee,
  :room_regular, :room_party, :room_vip

  attr_accessor :income

  def initialize(name, room_types)
    @name = name
    @room_types = room_types
    @entry_fee = 10
    @income = 0
    @room_regular = room_regular
    @room_party = room_party
    @room_vip = room_vip
  end

  def pay_entry_fee(guest_money)
    return guest_money >= @entry_fee
  end

  def count_income(guests)
    return guests * @entry_fee
  end




end