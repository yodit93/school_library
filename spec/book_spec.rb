require_relative './spec_helper'
describe Book do
    before(:all) do
        @book = Book.new('The Martian', 'Andy Weir')
    end
    
    describe '#initialize' do
        it 'creates a new Book instance' do
            expect(@book).to be_an_instance_of Book
        end

        it 'the title of the book should be "The Martin' do
            expect(@book.title).to eq('The Martian')
        end

        it 'the author of the book should be "Andy Weir' do
            expect(@book.author).to eq('Andy Weir')
        end

        it 'returns an array of Rental instances' do
            expect(@book.rentals).to be_an_instance_of Array
            expect(@book.rentals.length).to eql 0
        end
    end

    describe '#add_rental' do
        it 'adds a new Rental instance to the rentals array' do
            person = Person.new(18, 'John Doe')
            @book.add_rental('2020-01-01', person)
            expect(@book.rentals.length).to eql 1
            expect(@book.rentals[0]).to be_kind_of Rental
        end
    end
end
