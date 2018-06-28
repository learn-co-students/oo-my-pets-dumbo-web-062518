class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood
  
  def initialize(name = "Doug", mood = "nervous")
    @name = name
    @mood = mood
  end
end
