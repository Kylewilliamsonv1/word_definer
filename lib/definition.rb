class Definition
  attr_reader :id
  attr_accessor :description

  @@words = {}
  @@total_rows = 0

  def initialize (attributes)
    @name = attributes.fetch(:description)
    @id = attributes.fetch(:id) || @@total_rows +=1
  end

  def self.all 
    @@definitions.values
  end

  def save
    @@definitions[self.id] = Definition.new({:description => self.description, :id => self.id})
  end

  def ==(definition_to_compare)
    self.description == definition_to_compare.description
  end

  def self.clear
    @@definitions = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@definitions[id]
  end

  def update(name, word_id)
    self.name = name
    self.word_id = word_id
    @@definitions[self.id] = Definition.new(self.name, self.word_id, self.id)
  end

  def delete
    @@definitions.delete(self.id)
  end

  def self.clear
    @@definitions = {}
  end

end