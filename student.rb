require_relative 'Person'
class Student < Person
  def initialize(classroom, age, name: 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

student1 = Student.new('Biology', 10, name: 'Jackson', parent_permission: false)
p student1.can_use_services
