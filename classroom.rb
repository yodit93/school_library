require_relative 'student'
class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student
    student.classroom = self
  end
end

student1 = Student.new(13,name:'yodit')
classroom = Classroom.new('soft')
classroom.add_student(student1)

p classroom.students.length