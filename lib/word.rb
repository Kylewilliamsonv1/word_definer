class Word
  attr_reader :id
  attr_accessor :name, :type

  @@words = {}
  @@total_rows = 0

  def initialize (attributes)
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id) || @@total_rows +=1
    @type = attributes.fetch(:type)
  end

  def self.all 
    @@words.values
  end

  
end