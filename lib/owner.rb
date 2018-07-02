require 'pry'

class Owner

attr_reader :species
attr_accessor :name, :pets
@@all = []

  def initialize (species)
    @species = species
    @@all << self
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
     @@all.clear
   end

  def say_species
    kind = self.species
    "I am a #{kind}."
  end

  def name
    @name
  end

  def pets
    @pets
  end

  def buy_fish (name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat (name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog (name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    # binding.pry
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
    @pets.each do |types, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    # f = @pets[:fishes].count
    # d = @pets[:dogs].count
    # c = @pets[:cats].count
    # binding.pry
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
 end

end
