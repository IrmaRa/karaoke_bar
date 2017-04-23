class Viewer

  def get_guest_name(guest_number)
    puts "Hello! Please enter #{guest_number} name:"
    input = gets.chomp.capitalize
    puts "#{input} you were successfully checked in!"
  end
  
end