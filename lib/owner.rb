require_relative 'dog'
class Owner
  # code your solution here!
  attr_accessor :name, :dog
  #so the owner gets a dog... how do we get the dog?...
  #the dog knows about the owner, but the owner doesnt know about the dog
  #look to initialize in dog

  def initialize(name:, dog:)
    #we are initializing using name parameters
    #they are left empty just to enable one class to be initialized
    #without the other...in case the information has not been accessed...yet
    @name = name
    @dog = dog
  end

  def walking?
    dog.walking
  end

  def walk
    prepare_items
  end

  def prepare_items
    dog.leash = true
    dog.plastic_bag = true
    dog.walking = true
  end

  def vet_checkup
    prepare_items
  end

end
