class Definition
  attr_reader :id
  attr_accessor :description, :word_id

  
  #   @@descriptions = {}
  #   @@total_rows = 0
  
  #   def initialize(description, word_id, id)
  #     @description = description
  #     @word_id = word_id
  #     @id = id || @@total_rows += 1
  #   end
  
  #   def ==(definition_to_compare)
  #     (self.description() == definition_to_compare.description()) && (self.word_id() == definition_to_compare.word_id())
  #   end
  
  #   def self.all
  #     @@definitions.values
  #   end
  
  #   def save
  #     @@definitions[self.id] = Definition.new(self.description, self.word_id, self.id)
  #   end
  
  #   def self.find(id)
  #     @@definitions[id]
  #   end
  
  #   def update(description, word_id)
  #     self.description = description
  #     self.word_id = word_id
  #     @@definitions[self.id] = Song.new(self.description, self.word_id, self.id)
  #   end
  
  #   def delete
  #     @@definitions.delete(self.id)
  #   end
  
  #   def self.clear
  #     @@definitions = {}
  #   end
  # end






  @@definitions = {}
  @@total_rows = 0

  def initialize (attributes)
    @description = attributes.fetch(:description)
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

  def update(description)
    self.description = description
    @@definitions[self.id] = Definition.new({:description => self.description, :id => self.id})
  end

  def delete
    @@definitions.delete(self.id)
  end

  def self.clear
    @@definitions = {}
  end

end