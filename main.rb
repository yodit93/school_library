require_relative 'app'
def main_menu
  app = App.new
  menu_options = {
    1 => method(:list_books),
    2 => method(:list_people),
    3 => method(:create_person),
    4 => method(:create_book),
    5 => method(:create_rental),
    6 => method(:list_rentals),
    7 => method(:exit_app)
  }

  loop do
    display_menu
    choice = gets.chomp.to_i

    if menu_options.key?(choice)
      menu_options[choice].call(app)
    else
      puts 'Invalid option, please try again!'
    end
  end
end

def display_menu
  puts 'Please select an option:'
  puts '1. List all books'
  puts '2. List all people'
  puts '3. Create a person'
  puts '4. Create a book'
  puts '5. Create a rental'
  puts '6. List all rentals for a given person id'
  puts '7. Exit'
end

def list_books(app)
  app.list_books
end

def list_people(app)
  app.list_people
end

def create_person(app)
  app.create_person
end

def create_book(app)
  app.create_book
end

def create_rental(app)
  app.create_rental
end

def list_rentals(app)
  app.list_rentals
end

def exit_app(_app)
  puts 'Thanks for using the app!'
  exit
end

main_menu
