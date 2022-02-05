# show.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W4D5 - Gossip app

# Useful includes


# Show - Class branching the user to the relevant Controllers and Views 
class Show

  # clrscr - Flush the screen using the Unix term comman 'clear' (hence not compatible with all OSs)
  def self.clrscr
    system('clear')
  end

  # disp - Display the 'message' content to the STDIN / DISPLAY:0 with a "\n"
  # OK, this is a stupid alis for "puts" but, hey, it's 100% OOP now !
  def self.disp(message) 
    puts message
  end

  # echo - Display the 'message' content to the STDIN / DISPLAY:0 withOUT any "\n"
  # OK, this is a stupid alis for "print" but, hey, it's 100% OOP now ;-)
  def self.echo(message)
    print message
  end

  # pause - Insert a 'pause' by forcing the user to press the [Return] key for the programm to continue
  def self.pause
    Show.disp("")
    Show.disp("... Press [Return] to continue...")
    gets
  end

  # display_menu - Display the main menu and prompt the user for a choice
  def self.display_menu
    Show.clrscr
    Show.disp("")
    Show.disp("What do you wanna do, today, stranger ?")
    Show.disp("  1) I wanna add a gossip!")
    Show.disp("  2) I'd love to browse all existing gossips")
    Show.disp("  3) I would like to delete a given gossip [Work in progress]")
    Show.disp("  4) I'm fed up with all this gossip sh** and wanna leave!")
    Show.disp("")
    Show.echo("   > ")
    return gets.chomp.to_i
  end

  def self.input_gossip
    tmp_tab = []
    Show.clrscr
    Show.disp("")
    Show.disp("To input a new gossip, please:")
    Show.disp(" - First enter its author")
    Show.echo("   > ")
    tmp_tab[0] = gets.chomp
    Show.disp(" - Then tell us what this is all about")
    Show.echo("   > ")
    tmp_tab[1] = gets.chomp
    return tmp_tab
  end

  def self.list_gossips(gossip_tab)
    tmp_count = 1
    Show.disp("")
    Show.disp("  Here is the much expected gossip list !")
    Show.disp("")
    gossip_tab.each do |item|
      Show.disp("  > Gossip ##{tmp_count}")
      Show.disp("    - ID : #{item.id}")
      Show.disp("    - Author : #{item.author}")
      Show.disp("    - Content : #{item.content}")
      tmp_count += 1
    end
    Show.disp("")
    Show.disp("  And THAT was the gossip list: happy, stranger?")
    Show.pause
  end

end

# show.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)