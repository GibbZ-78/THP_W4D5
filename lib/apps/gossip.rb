# gossip.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W4D5 - Gossip app

# Useful includes
require_relative '../views/show.rb'
require_relative '../views/controller.rb'

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
    tmp_file.write("\""+self.author+"\","\"+self.gossip+"\"")
    tmp_file.close
    puts "  > Closing file."
    puts
  end

end

# gossip.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
