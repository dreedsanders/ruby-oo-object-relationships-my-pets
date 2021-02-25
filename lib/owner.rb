require 'pry'

class Owner

  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

def say_species
  "I am a #{species}."
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

  def cats
    Cat.all.select do |cats|
      cats.owner==self 
    end
  end

  def dogs
    Dog.all.select do |dogs|
      dogs.owner==self 
    end
  end

  def buy_cat(name)  
    Cat.new(name, self)

  end

  def buy_dog(name)  
    Dog.new(name, self)

  end

  def walk_dogs
    Dog.all.select do |dog_mood|
      dog_mood.mood="happy"
    end
  end

  def feed_cats
    Cat.all.select do |cats_mood|
      cats_mood.mood="happy"
    end
  end

  def sell_pets
    Cat.all.select do |bye_cats|
      bye_cats.mood="nervous"
      bye_cats.owner=nil
    end
    Dog.all.select do |bye_dogs|
      bye_dogs.mood="nervous"
      bye_dogs.owner=nil 
    end
  end

  def list_pets
    ("I have #{self.Dog.count} dog(s), and #{self.Cat.count} cat(s).")
  end







  end






