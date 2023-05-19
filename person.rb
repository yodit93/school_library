require_relative 'nameable'
require_relative 'trimmer_decorator'
require_relative 'capitalize_decorator'
require_relative 'rental'
class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals

  # @people = [] # Array of Person instances

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
    # self.class.add_person(self) # Add the instance to the class instance variable
  end

  def can_use_services
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, self, book)
  end

  # def self.add_person(person)
  #   @people ||= [] # Ensure @people is not nil
  #   @people.push(person)
  # end

  # Class method only accessible through the class, not by the instances.
  # Returns all the instances of the class.
  # def self.all
  #   @people
  # end

  private

  def of_age?
    @age >= 18
  end
end
