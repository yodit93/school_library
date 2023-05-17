require_relative 'student'
require_relative 'classroom'

std = Student.new(10, name: 'Jackson', parent_permission: false)
cls = Classroom.new('Biology')
std.classroom = cls
p std.classroom.label
std2 = Student.new(18, name: 'john', parent_permission: true)
cls.add_student(std2)
p std2.classroom.label