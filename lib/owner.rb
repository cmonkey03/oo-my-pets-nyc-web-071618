require 'pry'

class Owner
  # code goes here

  attr_accessor :name, :pets

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def species
    "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
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
    pets.map { |species, arr| arr.map { |pet| pet.mood = "nervous"  }   }
    pets.map { |species, arr| arr.clear  }
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

end
