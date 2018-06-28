require 'pry'

class Owner

@@all = []

attr_accessor :name, :pets
attr_reader :species

def initialize(name)
  @name = name
  @species = "human"
  @pets = {
    :fishes => [],
    :dogs => [],
    :cats => []
  }
  #and it tracks them
  @@all << self
end

#CLASS METHODS
def self.all
  @@all
end

def self.reset_all
  @@all =[]
end

def self.count
  @@all.length
end

#INSTANCE METHODS
def say_species
  "I am a #{species}."
end

def buy_fish(name)
@pets[:fishes] << Fish.new(name)
end

def buy_cat(name)
@pets[:cats] << Cat.new(name)
end

def buy_dog(name)
@pets[:dogs] << Dog.new(name)
end

def walk_dogs
  make_happy(:dogs)
end

def play_with_cats
  make_happy(:cats)
end

def feed_fish
  make_happy(:fishes)
end

def sell_pets
  @pets.values.flatten.each do |pet|
    pet.mood = "nervous"
  end
  @pets = {:fishes => [], :dogs => [],:cats => []}
end

def list_pets
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
end
#this is a method that only appears on the inside technically.
def make_happy(animal)
  @pets[animal].each do |animal|
    animal.mood = "happy"
  end
end

end
