require_relative 'rental'
class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = [] # Array of Rental instances
  end

  def add_rental(date, person)
    Rental.new(date, person, self)
  end
end
