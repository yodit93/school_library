require_relative './spec_helper'

describe Person do
  before(:all) do
    @student = Student.new(18, name:'Yodit')
  end
  describe '#initialize' do
    it 'should create a new instance with attributes, id, name, age, parent_permission' do
      expect(@student).to be_an_instance_of(Student)
    end

    it 'the name of the student should be Yodit' do
      expect(@student.name).to eql('Yodit')
    end

    it 'his age should be 18' do
      expect(@student.age).to eq(18)
    end

    it 'has an id attribute' do
      expect(@student).to respond_to(:id)
    end

    it 'has parent_permission' do
      expect(@student.parent_permission).to be true
    end

    it 'a student should belong to a classroom' do
      classroom = Classroom.new('software')
      @student.classroom = classroom
      expect(classroom.students.length).to be 1
      expect(classroom.students).to include (@student)
    end
  end

  describe '#play_hooky' do
    it 'should outputs ¯(ツ)/¯' do
        expect(@student.play_hooky).to eql('¯(ツ)/¯')
    end
  end

end
