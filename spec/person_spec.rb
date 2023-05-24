require_relative './spec_helper'

describe Person do
  before(:all) do
    @person = Person.new(18, 'John Doe')
  end
  describe '#initialize' do
    it 'should create a new instance with attributes, id, name, age, parent_permission' do
      expect(@person).to be_an_instance_of(Person)
    end

    it 'the name of the person should be John Doe' do
      expect(@person.name).to eql('John Doe')
    end

    it 'his age should be 18' do
      expect(@person.age).to eq(18)
    end

    it 'has an id attribute' do
      expect(@person).to respond_to(:id)
    end

    it 'has parent_permission' do
      expect(@person.parent_permission).to be true
    end
  end

  describe '#can_use_services' do
    it 'should be able to use services' do
      expect(@person.can_use_services).to be true
    end
  end

  describe '#correct_name' do
    it 'should return the name of the person' do
      expect(@person.correct_name).to eq('John Doe')
    end
  end

  describe '#add_rental' do
    it 'should add a new rental instance to rentals array' do
      book = Book.new('The Martin', 'John Smith')
      date = '2023/5/7'
      @person.add_rental(date, book)
      expect(@person.rentals.length).to equal 1
      expect(@person.rentals.first).to be_an_instance_of Rental
    end
  end
end
