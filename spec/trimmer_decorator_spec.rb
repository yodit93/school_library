require_relative './spec_helper'

describe TrimmerDecorator do
  before(:each) do
    person = Student.new(23, name:'yodit abebe nahom')
    @instance = TrimmerDecorator.new(person)
  end
  it 'should be an instance of TrimmerDecorator class' do
    expect(@instance).to be_an_instance_of(TrimmerDecorator)
  end
  it 'should return trimmed name' do
    expect(@instance.correct_name).to eql('yodit abeb')
  end
end
