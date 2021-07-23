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
end