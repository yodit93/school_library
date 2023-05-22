require_relative 'app'
require_relative 'main_menu'
require_relative 'menu_displayer'

def main
  app = App.new
  main_menu = MainMenu.new(app)
  displayer = MenuDisplayer.new

  loop do
    displayer.display
    choice = gets.chomp.to_i
    main_menu.user_options(choice)
  end
end

main
