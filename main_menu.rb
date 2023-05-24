class MainMenu
  attr_reader :app

  def initialize(app)
    @app = app
  end

  def user_options(choice)
    menu_options = {
      1 => method(:list_books),
      2 => method(:list_people),
      3 => method(:create_person),
      4 => method(:create_book),
      5 => method(:create_rental),
      6 => method(:list_rentals),
      7 => method(:exit_app)
    }
    if menu_options.key?(choice)
      menu_options[choice].call(app)
    else
      puts 'Invalid option, please try again!'
    end
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
end
