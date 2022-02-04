# router.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W4D5 - Gossip app

# Useful includes
require_relative 'controller.rb'
require_relative '../views/show.rb'

# Router - Class branching the user to the relevant Controllers and/or Views 
class Router

  #On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller"
  def initialize
    @controller =  Controller.new
  end 

  #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit donc perform.
  def perform 
    tmp_prompt = []
    exit = false
    Show.disp("WELCOME TO THE GOSSIP PROJECT")
    while !exit
      choice = Show.display_menu
      case choice
      when 1
        Show.disp("You chose to store a new gossip. Cool!")
        tmp_prompt = Show.input_gossip
        @controller.create_gossip(tmp_prompt[0], tmp_prompt[1])
      when 2
        Show.disp("You decided to have a look at our gossip warehouse")
        @controller.index_gossips
      when 4
        Show.disp("Hope to see you soon!")
        exit = false
      else
        Show.disp("You apparently encountered difficulties typing an adequate choice... Ask your dog or cat for help ;-)")
      end
    end
  end
end

# router.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)