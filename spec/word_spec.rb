require 'simplecov'
SimpleCov.start
require 'rspec'
require 'word'

describe '#board' do 

  describe('.all') do
    it("it will return an empty array of words.") do
      expect(Word.all).to(eq([]))
    end
  end
end
