class Dog
    # code goes here
    attr_reader :name
  
    @@dogs =[]
    #attr_accessor :owner, mood
   
    def initialize(name, owner)
      @name = name
      @owner = owner
      @mood = "nervous"
      @@dogs << self
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
      @@dogs
    end
  
  end
  # code goes here