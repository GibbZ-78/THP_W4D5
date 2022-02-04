# controller.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W4D5 - Gossip app

# Useful includes
require_relative '../views/show.rb'
require_relative '../views/gossip.rb'

# Controller - Class managing all the program logic and mechanics
class Controller

  # new - Creator of a Controller object
  def initialize

  end

  # create_gossip - Method instantiating a new gossip object accessible by the Controller
  def create_gossip(the_author,the_gossip)
    my_gossip = Gossip.new(the_author,the_gossip)
    my_gossip.save_to_csv("../../db/gossip.csv")
  end

  # index_gossip - Method listing all existing gossips
  def index_gossip
    list_gossips(Gossip.read_all("../../db/gossip.csv"))
  end

end

# controller.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
