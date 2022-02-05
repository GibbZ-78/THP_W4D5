# controller.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W4D5 - Gossip app

# Useful includes
require_relative '../views/show.rb'
require_relative './gossip.rb'

# Controller - Class managing all the program logic and mechanics
class Controller

  @@csv = "db/gossip.csv"

  # new - Creator of a Controller object
  def initialize(my_csv_file)
    if File.exists?(my_csv_file)
      @@csv= my_csv_file
    end
    # Basically... Does nothing else:-)
  end

  # create_gossip - Method instantiating a new gossip object accessible by the Controller
  def create_gossip(the_author,the_gossip)
    my_gossip = Gossip.new(the_author,the_gossip,0,true)
    my_gossip.save_to_csv(@@csv)
  end

  # index_gossip - Method listing all existing gossips
  def index_gossips
    tmp_index_tab = Gossip.read_all(@@csv,true)
    if !tmp_index_tab.nil?
      Show.list_gossips(tmp_index_tab)
      return true
    else
      Show.disp("  > Sadly, the related gossip file is... Still empty. Try adding some new gossips, Stranger!")
      Show.pause
      return false
    end
  end

  # delete_gossip - Launch the Gossip class method 'suppr_gossip_from_csv' to defintively delete the Gossip with given 'id'
  def delete_gossip(my_gossip_id)
    return Gossip.suppr_gossip_from_CSV(@@csv, my_gossip_id)
  end

end

# controller.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
