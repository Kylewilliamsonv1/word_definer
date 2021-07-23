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
    @@words.values
  end

  def save
    @@definitions[self.id] = Definition.new({:description => self.description, :id => self.id})
  end
end