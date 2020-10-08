class Proficiencies
   attr_accessor :name, :hit_die, :proficiencies, :subclasses, :saving_throws, :klass
    @@all = []
    
    def initialize( name:, hit_die:, proficiencies:, subclasses:, saving_throws:)
      @name = name
      @@hit_die = hit_die
      @proficiencies = proficiencies
      @subclasses = subclasses
      @saving_throws = saving_throws
      @klass = []
      @@all << self
    end 

    def self.all
      @@all
    end
  
    def self.find_proficiencies(index)
     @@all.select {|k| k.klass[0].index == index}
    end
    
   
 
end 


# def self.find(klass)
      #@@all.select { |k| k.klass[0].index == klass }
    #end 
    
    
 