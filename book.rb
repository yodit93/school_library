require_relative 'rental'
class Book
  attr_accessor :title, :author
  attr_reader :rentals

  @books = [] # Array of Book instances

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = [] # Array of Rental instances
    self.class.add_book(self) # Add the instance to the class instance variable
  end

  def add_rental(date, person)
    Rental.new(date, person, self)
  end

  def self.add_book(book)
    @books ||= [] # Ensure @books is not nil
    @books.push(book)
  end

  # Class method only accessible through the class not by the instances. return all the instances of the class
  def self.all
    @books
  end
end
