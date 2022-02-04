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
    puts "What do you wanna do, today, stranger ?"
    puts "  1.I wanna add a gossip!"
    puts "  2.I'd love to browse all existing gossips"
    puts "  4.I'm fed up with this gossip sh** and wanna leave!"
    puts
    print "   > "
    return gets.chomp.to_i
  end

  def self.input_gossip
    tmp_tab = []
    puts
    puts "To input a new gossip, please:"
    puts " - First enter its author"
    print "   > "
    tmp_tab[0] = gets.chomp
    puts " - Then tell us what this is all about"
    print "   > "
    tmp_tab[1] = gets.chomp
    return tmp_tab
  end

  def self.list_gossips(gossip_tab)
    tmp_count = 1
    puts
    puts "  Here is the much expected gossip list !"
    puts
    gossip_tab.each do |item|
      puts "  > Gossip ##{tmp_count}"
      puts "    - Author : #{item.author}"
      puts "    - Content : #{item.content}"
    end
    puts
    puts "  And THAT was the gossip list: happy, stranger?"
    puts
  end

end

# show.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)