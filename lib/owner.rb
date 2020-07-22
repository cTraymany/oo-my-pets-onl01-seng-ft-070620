# learn spec/01_owner_spec.rb
require "pry"

class Owner
  attr_accessor
  attr_reader :name, :species, :my_cats, :my_dogs
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @my_cats = []
    @my_dogs = []
  end
  
  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end
  
  def cats
    Cat.all.select { |cat| cat.owner == self }
  end
  
  def dogs
    Dog.all.select { |dog| dog.owner == self }
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
    cat.owner = self
  end

  def buy_dog
    
  end
end

# jaja = Owner.new("Chindalath")
# # jaja => #<Owner:0x00000000016c1cd0 @name="Chindalath", @species="human">
# jaja.buy_cat("Gomez")


# binding.pry