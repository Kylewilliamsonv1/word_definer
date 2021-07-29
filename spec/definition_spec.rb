require 'simplecov'
SimpleCov.start
require 'rspec'
require 'definition'

# describe '#Definition' do

#   before(:each) do
#     Word.clear()
#     Definition.clear()
#     @word = Word.new("Giant Steps", nil)
#     @word.save()
#   end

#   describe('#==') do
#     it("is the same definition if it has the same attributes as another definition") do
#       definition = Definition.new("buildable kids couch", @word.id, nil)
#       definition2 = Definition.new("Naima", @word.id, nil)
#       expect(definition).to(eq(definition2))
#     end
#   end

#   describe('.all') do
#     it("returns a list of all definitions") do
#       definition = Definition.new("buildable kids couch", @word.id, nil)
#       definition.save()
#       definition2 = Definition.new("precious metal", @word.id, nil)
#       definition2.save()
#       expect(Definition.all).to(eq([definition, definition2]))
#     end
#   end

#   describe('.clear') do
#     it("clears all definitions") do
#       definition = Definition.new("buildable kids couch", @word.id, nil)
#       definition.save()
#       definition2 = Definition.new("precious metal", @word.id, nil)
#       definition2.save()
#       Definition.clear()
#       expect(Definition.all).to(eq([]))
#     end
#   end

#   describe('#save') do
#     it("saves a definition") do
#       definition = Definition.new("buildable kids couch", @word.id, nil)
#       definition.save()
#       expect(Definition.all).to(eq([definition]))
#     end
#   end

#   describe('.find') do
#     it("finds a definition by id") do
#       definition = Definition.new("buildable kids couch", @word.id, nil)
#       definition.save()
#       definition2 = Definition.new("precious metal", @word.id, nil)
#       definition2.save()
#       expect(Definition.find(definition.id)).to(eq(definition))
#     end
#   end

#   describe('#update') do
#     it("updates an definition by id") do
#       definition = Definition.new("buildable kids couch", @word.id, nil)
#       definition.save()
#       definition.update("a currency", @word.id)
#       expect(definition.description).to(eq("a currency"))
#     end
#   end

#   describe('#delete') do
#     it("deletes an definition by id") do
#       definition = Definition.new("buildable kids couch", @word.id, nil)
#       definition.save()
#       definition2 = Definition.new("precious metal", @word.id, nil)
#       definition2.save()
#       definition.delete()
#       expect(Definition.all).to(eq([definition2]))
#     end
#   end
# end






describe '#definition' do 

  before(:each) do
    Definition.clear()
  end

  describe('.all') do
    it("it will return an empty array of definitions.") do
      expect(Definition.all).to(eq([]))
    end
  end

  describe('#save') do
  it("it will save a word") do
      definition = Definition.new({:description => "buildable kids couch", :id => nil})
      definition.save
      expect(Definition.all).to(eq([definition]))
    end
  end

  describe('#==') do
  it('it will compare words by their attributes, if they match they are the same.') do
      definition = Definition.new({:description => "buildable kids couch", :id => nil})
      definition.save
      definition2 = Definition.new({:description => "buildable kids couch", :id => nil})
      definition2.save
      expect([definition]).to(eq([definition2]))
    end
  end

  describe('.clear') do
    it('clears all words') do
      definition = Definition.new({:description => "buildable kids couch", :id => nil})
      definition.save
      definition2 = Definition.new({:description => "buildable kids couch", :id => nil})
      definition2.save
      Definition.clear
      expect(Definition.all).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a definition") do
      definition = Definition.new({:description => "buildable kids couch", :id => nil})
      definition.save()
      expect(Definition.all).to(eq([definition]))
    end
  end

  describe('.find') do
    it("finds a definition by id") do
      definition = Definition.new({:description => "buildable kids couch", :id => nil})
      definition.save()
      definition2 = Definition.new({:description => "precious metal", :id => nil})
      definition2.save()
      expect(Definition.find(definition.id)).to(eq(definition))
    end
  end

  describe('#update') do
    it("updates an definition by id") do
      definition = Definition.new({:description => "buildable kids couch", :id => nil})
      definition.save()
      definition.update({:description => "a valueable metal", :id => nil})
      expect(definition.description).to(eq("a valueable metal"))
    end
  end

  describe('#delete') do
    it("deletes an definition by id") do
      definition = Definition.new({:description => "buildable kids couch", :id => nil})
      definition.save()
      definition2 = Definition.new({:description => "precious metal", :id => nil})
      definition2.save()
      definition.delete()
      expect(Definition.all).to(eq([definition2]))
    end
  end
end