
class Dog
  attr_accessor :leash, :plastic_bag, :walking, :vet, :name

  def initialize(name, breed, owner_name)
    @name = name
    @breed = breed
    @owner = Owner.new(name: owner_name, dog: self)
    #here we are making an object that knows how to respond to owner_name
    #what we are doing here is saying, init the owner
    #first value the owners name and the second the dog
    #you can also try Owner.new(name: owner_name, dog: self)
    #using name parameters makes things more explicit and understandable
    #as opposed to random parameters
    @leash = false
    @plastic_bag = false
    @walking = false
    @vet_checkup = false
  end

  def bark
    "Woof!"
  end

  def owner
    @owner
  end

  def breed
    @breed
  end

  def walking?(owner)
    owner.dog.walking
  end

  def vet_checkup?(owner)
    owner.vet_checkup
  end

  def vet_checkup(owner)
    owner.dog.leash = true
    owner.dog.plastic_bag = true
    owner.dog.vet_checkup = true
  end
end
