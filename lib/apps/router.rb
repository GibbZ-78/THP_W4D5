# router.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W4D5 - Gossip app

# Useful includes
require_relative 'controller.rb'
require_relative '../views/show.rb'

# Router - Class branching the user to the relevant Controllers and/or Views 
class Router

  # On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller"
  def initialize
    @controller =  Controller.new("db/gossip.csv")
  end 

  # rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit donc perform.
  def perform 
    tmp_prompt = []
    tmp_gossip_id = 0
    tmp_route = false
    exit = false
    Show.clrscr
    Show.disp("WELCOME TO THE GOSSIP PROJECT")
    while !exit
      choice = Show.display_menu
      case choice
      when 1 # CREATE a new gossip
        Show.disp("You chose to store a new gossip. Cool!")
        tmp_prompt = Show.input_gossip
        @controller.create_gossip(tmp_prompt[0], tmp_prompt[1])
      when 2 # READ all stored gossips
        Show.disp("You decided to have a look at our gossip warehouse")
        tmp_route = @controller.index_gossips
      when 3 # UPDATE an existing gossip [Work in progress]
        Show.disp("Hey, you! The UPDATE feature for our gossip list is still WIP. Keep calm, lay back and eat a pizza instead.")
      when 4 # DELETE a given gossip
        Show.disp("Yo, Stranger! This feature is not for lamerz... Be careful with what you do to my gossip list, OK?")
        Show.disp("")
        tmp_route = @controller.index_gossips
        if tmp_route
          tmp_gossip_id = Show.prompt_for_deletion
          if @controller.delete_gossip(tmp_gossip_id)
            Show.disp("Nicely done, Stranger! Looks like gossip ##{tmp_gossip_id} has been deleted. Surely telling unmentionable things about you ;-)")
            Show.pause
          else
            Show.disp("Oooops! Looks like something went wrong... Next time, ask your 3-year-old brother or sister for help, Stranger.")
            Show.pause
          end
        else
          Show.disp("Looks like the Gossip file is still empty: no mean to delete from it, then... You fool :-D")
          Show.pause
        end
      when 5
        Show.disp("")
        Show.disp("Hope to see you (not too) soon, Stranger!")
        exit = true
      else
        Show.disp("You apparently encountered difficulties typing an adequate choice... Ask your dog or cat for help ;-)")
      end
    end
  end
end

# router.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)