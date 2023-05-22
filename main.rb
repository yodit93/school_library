require_relative 'app'
require_relative 'main_menu'
def main
  app = App.new
  main_menu = MainMenu.new(app)
  loop do
    main_menu.display_menu
    choice = gets.chomp.to_i
    main_menu.user_options(choice)
  end
end

main
