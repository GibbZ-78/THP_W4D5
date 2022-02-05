# controller.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W4D5 - Gossip app

# Useful includes
require_relative '../views/show.rb'
require_relative './gossip.rb'

# Controller - Class managing all the program logic and mechanics
class Controller

  # new - Creator of a Controller object
  def initialize
    # Basically... Does nothing :-)
  end

  # create_gossip - Method instantiating a new gossip object accessible by the Controller
  def create_gossip(the_author,the_gossip)
    my_gossip = Gossip.new(the_author,the_gossip,0,true)
    my_gossip.save_to_csv("db/gossip.csv")
  end

  # index_gossip - Method listing all existing gossips
  def index_gossips
    tmp_index_tab = Gossip.read_all("db/gossip.csv",true)
    if !tmp_index_tab.nil?
      Show.list_gossips(tmp_index_tab)
    else
      Show.disp("  > Sadly, the related gossip file is... Still empty. Try adding some new gossips, Stranger!")
      Show.pause
    end
  end

end

# controller.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
