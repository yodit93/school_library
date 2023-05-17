require_relative 'student'
require_relative 'classroom'
require_relative 'person'
require_relative 'book'
require_relative 'rental'

std = Student.new(10, name: 'Jackson', parent_permission: false)
cls = Classroom.new('Biology')
std.classroom = cls
p std.classroom.label
std2 = Student.new(18, name: 'john', parent_permission: true)
cls.add_student(std2)
p std2.classroom.label

person = Person.new(10, 'Jackson', parent_permission: false)
p person.rentals
book = Book.new('The Lord of the Rings', 'J. R. R. Tolkien')
rental = Rental.new('2021-09-28', person, book)
p person.rentals.first.book.title
p book.rentals.first.book.title

person2 = Person.new(20, 'Jony', parent_permission: true)
p person2.rentals
person2.add_rental(rental)
p person2.rentals.length
