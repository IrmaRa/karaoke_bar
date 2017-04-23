class Viewer

  def get_guest_name()
    puts "Hello! Please enter guest's name:"
    input = gets.chomp.capitalize
  end

  def add_guest(guest_name)
    puts "#{guest_name} was successfully checked in!"
  end

  def check_guest_money()
    puts "How much money does guest have?"
    input = gets.chomp.to_i
    if input >= 10
      puts "Great! Guest can come in!"
    else
      puts "It's guest's lucky day! Guest can come in!"
    end
  end
  
end