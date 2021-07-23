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

  describe('#save') do
    it("it will save a word") do
      word = Word.new({:name => "nugget", :id => nil, :type => "noun"})
      word.save
      expect(Word.all).to(eq([word]))
    end
  end

  describe('#==') do
    it('it will compare words by their attributes, if they match they are the same.') do
      word = Word.new({:name => "nugget", :id => nil, :type => "noun"})
      word.save
      word2 = Word.new({:name => "happy", :id => nil, :type => "adjective"})
      word2.save
      expect(Word.all).to(eq([word2]))
    end
  end
end



  # before(:each) do
  #   Word.clear()
  # end


