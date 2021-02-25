class Cat
  # code goes here
  attr_reader :name

  @@cats =[]
  #attr_accessor :owner, mood
 
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@cats << self
  end

  def owner=(owner)
    @owner = owner 
  end
  
  def owner
    @owner
  end

  def mood=(mood)
    @mood = mood
  end


  def mood
    @mood
  end

  def self.all
    @@cats
  end

end