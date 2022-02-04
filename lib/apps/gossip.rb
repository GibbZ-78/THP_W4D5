# gossip.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W4D5 - Gossip app

# Useful includes
require_relative '../views/show.rb'
require_relative '../views/controller.rb'
require 'io/console'

# Gossip - Class instantiating the Gossip objects and related methods (CRUD = create, read, update, delete)
class Gossip
  attr_accessor :author, :content

  def initialize(my_author, my_content)
      @author = author
      @content = content
  end

  # save_to_csv - Write ('w' mode if new file, 'a' mode if not) a Gossip author and content into "gossip.csv"
  def save_to_csv(my_csv_filename)
    tmp_file = nil
    tmp_write_mode = "w"
    puts
    puts "Saving gossip into CSV file:"
    puts "  > Searching for backup file '#{my_csv_filename}'."
    if File.exists?(my_csv_filename)
      puts "  > File '#{my_csv_filename}' exists already - Adding the gossip."
      tmp_write_mode = "a"
    else
      puts "  > File '#{my_csv_filename}' does not exist - Creating and opening it to add the gossip."
    end
    tmp_file = File.open(my_csv_filename, tmp_write_mode)
    tmp_file.write(self.author+"|"+self.content+"\n")
    tmp_file.close
    puts "  > Closing file."
    puts
  end

  def self.read_all(my_csv_filename)
    tmp_file = nil
    tmp_lines_tab = []
    tmp_all_gossips_tab = []
    tmp_gossip_tab = []
    puts
    puts "Reading all gossips from CSV file:"
    puts "  > Searching for the pointed CS file '#{my_csv_filename}'."
    if !File.exists?(my_csv_filename)
      puts "  > File does not exist, sorry. Hence not able to display all gossips."
      return nil
    else
      tmp_lines_tab = IO.readlines(my_csv_filename)
      tmp_lines_tab.each do |my_line|
        tmp_gossip_tab = my_line.split("|")
        tmp_all_gossips_tab.push(Gossip.new(tmp_gossip_tab[0].chomp,tmp_gossip_tab[1].chomp))
      end
      return tmp_all_gossips_tab
    end
  end

end

# gossip.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
