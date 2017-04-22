class KaraokeBar

  attr_reader :name, :room_types, :entry_fee

  def initialize(name, room_types)
    @name = name
    @room_types = room_types
    @entry_fee = 10
  end

  def pay_entry_fee(guest_money)
    return guest_money >= @entry_fee
  end


end