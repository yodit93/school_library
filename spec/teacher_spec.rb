require_relative './spec_helper'

describe Teacher do
  before(:all) do
    @teacher = Teacher.new(18,'software engineer', 'Nahom')
  end
  describe '#initialize' do
    it 'should create a new instance with attributes, name, age, specialization' do
      expect(@teacher).to be_an_instance_of(Teacher)
    end

    it 'the name of the teacher should be Nahom' do
      expect(@teacher.name).to eql('Nahom')
    end

    it 'his specialization should be software engineer' do
      expect(@teacher.specialization).to eq('software engineer')
    end

    it 'his age should be 18' do
      expect(@teacher.age).to eq(18)
    end

  end

  describe '#can_use_services' do
    it 'should always be able to use services' do
      expect(@teacher.can_use_services).to be true
    end
  end
end
