require_relative 'Person'
class Student < Person
  def initialize(classroom, name, age, parent_permission)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
