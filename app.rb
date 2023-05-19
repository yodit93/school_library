require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books
    puts 'List of books:'
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def list_people
    puts 'List of people:'
    @people.each do |person|
      if person.respond_to?(:specialization)
        print '[Teacher] '
      else
        print '[Student] '
      end
      puts "Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    person_type = gets.chomp.to_i

    case person_type
    when 1
      create_student
    when 2
      create_teacher
    else
      puts 'Invalid option, please try again!'
    end
    puts 'Person created successfully!'
  end

  def create_student
    puts 'Age:'
    age = gets.chomp.to_i
    puts 'Name:'
    name = gets.chomp
    puts 'Has parent permission? [Y/N]:'
    parent_permission = gets.chomp.downcase == 'y'
    student = Student.new(age, name: name, parent_permission: parent_permission)
    @people << student
  end

  def create_teacher
    puts 'Age:'
    age = gets.chomp.to_i
    puts 'Name:'
    name = gets.chomp
    puts 'Specialization:'
    specialization = gets.chomp
    teacher = Teacher.new(age, name, specialization)
    @people << teacher
  end

  def create_book
    puts 'Title:'
    title = gets.chomp
    puts 'Author:'
    author = gets.chomp
    book = Book.new(title, author)
    @books << book
    puts 'Book created succesfully'
  end

  def create_rental
    book = selected_book
    person = selected_person
    puts 'Date: '
    date = gets.chomp
    rental = Rental.new(date, person, book)
    @rentals << rental
    puts 'Rental created succesfully'
  end

  def selected_book
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, index|
      puts "(#{index}) Title: #{book.title}, Author: #{book.author}"
    end
    choice = gets.chomp.to_i
    @books[choice]
  end

  def selected_person
    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index do |person, index|
      if person.respond_to?(:specialization)
        puts "(#{index}) [Teacher] Name: #{person.name}, ID #{person.id}, Age: #{person.age}"
      else
        puts "(#{index}) [Student] Name: #{person.name}, ID #{person.id}, Age: #{person.age}"
      end
    end
    choice = gets.chomp.to_i
    @people[choice]
  end

  def list_rentals
    puts 'Please enter the person id:'
    id = gets.chomp.to_i
    puts 'Rentals:'
    @people.each do |person|
      next unless person.id == id

      person.rentals.each do |rental|
        puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.person.name}"
      end
    end
  end
end
