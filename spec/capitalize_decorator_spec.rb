require_relative './spec_helper'

describe CapitalizeDecorator do
    before(:each) do
        person = Person.new(23, "john")
        @instance = CapitalizeDecorator.new(person)
    end
    it "should be an instance of CapitalizeDecorator class" do
        expect(@instance).to be_an_instance_of(CapitalizeDecorator)
    end
    it "should return capitalized name" do 
        expect(@instance.correct_name).to eql("John")
    end
end
