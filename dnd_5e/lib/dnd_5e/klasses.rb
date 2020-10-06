class Klasses
   attr_accessor  :index
   
   @@all = []
  
    def initialize(index:)
      @index = index
      @@all << self
    end
    
    def self.all
      @@all
    end
end 