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
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
    exit = false
    while !exit
      choice = Show.display_menu
      case choice
      when 1
        Show.disp("Tu as choisi de créer un potin !")
        @controller.create_gossip
      when 4
        Show.disp("À bientôt !")
        exit = false
      else
        Show.disp("Ce choix n'existe pas, merci de réessayer")
      end
    end
  end
end

# router.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)