require_relative './spec_helper'

describe Classroom do
  before(:all) do
    @classroom = Classroom.new('fullstack')
  end
  describe '#initialize' do
    it 'should create a new instance with attributes, label' do
      expect(@classroom).to be_an_instance_of(Classroom)
    end

    it 'the label of the classroom should be fullstack' do
      expect(@classroom.label).to eql('fullstack')
    end

    it 'the students of the classroom should be empty' do
      expect(@classroom.students.length).to be 0
    end

  end

  describe '#add_student' do
    it 'should add a student to the classroom' do
        student = Student.new(15,name:'nahom')
        @classroom.add_student(student)
        
        expect(@classroom.students.length).to eql(1)
        expect(@classroom.students.first).to eql(student)
    end
  end

end
