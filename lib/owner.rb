require 'pry'


class Owner
  attr_reader :species
  attr_accessor :pets, :all, :name

  @@all = []

# CLASS METHODS

  def initialize(name, species="human")
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
      @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end

# INSTANCE METHODS

  def species(species="human")
    @species = species
  end

  def say_species
    "I am a #{species}."
  end

  # BUY ANIMAL METHODS

  def buy_cat(pet_name)
    @pets[:cats] << Cat.new(pet_name)

  end

  def buy_dog(pet_name)
    @pets[:dogs] << Dog.new(pet_name)

  end

  def buy_fish(pet_name)
    @pets[:fishes] << Fish.new(pet_name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.values.flatten.each do |pet|
      pet.mood = "nervous"
    @pets = {fishes: [], cats: [], dogs: []}
    end
  end

  def list_pets
    "I have " + @pets[:fishes].length.to_s + " fish, " + @pets[:dogs].length.to_s + " dog(s), and " + @pets[:cats].length.to_s + " cat(s)."
  end

end

# pry.start
