# show.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W4D5 - Gossip app

# Useful includes


# Show - Class branching the user to the relevant Controllers and Views 
class Show

  # disp - Display the 'message' content to the STDIN / DISPLAY:0
  def self.disp(message) 
    puts message
  end

  # display_menu - Display the main menu and prompt the user for a choice
  def self.display_menu
    puts "Tu veux faire quoi jeune mouss' ?"
    puts "1. Je veux créer un gossip"
    puts "4. Je veux quitter l'app"
    puts
    print " > "
    return gets.chomp.to_i
  end

end

# show.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)