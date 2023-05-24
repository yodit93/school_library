require_relative './spec_helper'

describe Rental do
    before(:all) do
        @book = Book.new("Title", "Author")
        @person = Person.new(18, 'John Doe')
        @rental = Rental.new("2013/3/23", @person, @book)
    end
    it "create new instance of rental class" do
        expect(@rental).to be_an_instance_of(Rental)
    end

    it "should return the name of the person who has rented the book" do
        expect(@rental.person.name).to eql("John Doe")
    end

    it "should return the title of the book" do
        expect(@rental.book.title).to eql ("Title")
    end

    it "should add new rental to book and person object" do
        expect(@book.rentals.length).to be 1
        expect(@person.rentals.length).to be 1
    end
end
