require 'Person'
class Teacher
  def initializer(age, specialization, name)
    super(age, name)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
