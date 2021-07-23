require 'simplecov'
SimpleCov.start
require 'rspec'
require 'definition'

describe '#definition' do 

  # before(:each) do
  #   Definition.clear()
  # end

  describe('.all') do
    it("it will return an empty array of definitions.") do
      expect(Definition.all).to(eq([]))
    end
  end

  describe('#save') do
  it("it will save a word") do
      definition = Definition.new({:name => "buildable kids couch", :id => nil})
      definition.save
      expect(Definition.all).to(eq([definition]))
    end
  end
end