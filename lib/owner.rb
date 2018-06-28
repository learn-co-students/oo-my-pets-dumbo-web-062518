class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  counter = 0
  @@all = []
  def initialize (species)
    @species = species
    @@all << self
    @pets = { fishes: [], dogs: [], cats: []}
  end

def self.owner
  @name = self
end

def self.all
  @@all
end

def self.count
  @@all.count
end

def species
  @species
end

def say_species
  "I am a #{species}."
end

def self.reset_all
  @@all.clear
end

def buy_fish(name)
  fish = Fish.new(name)
  pets[:fishes] << fish
end

def buy_cat(name)
  cat = Cat.new(name)
  pets[:cats] << cat
end

def buy_dog(name)
  dog = Dog.new(name)
  pets[:dogs] << dog
end

def walk_dogs
  pets[:dogs].map { |dog| dog.mood = "happy" }
end

def play_with_cats
  pets[:cats].map { |cat| cat.mood = "happy" }
end

def feed_fish
  pets[:fishes].map { |fish| fish.mood = "happy" }
end

def sell_pets
  pets.each do |species, pet|
    pet.map { |pet| pet.mood = "nervous" }
  end
  pets.clear
end

def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end

end
