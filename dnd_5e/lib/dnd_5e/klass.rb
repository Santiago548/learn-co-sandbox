class Klass
   attr_accessor  :index, :hit_die, :proficiencies
   @@all = []
  
    def initialize(index:, hit_die:) 
      @index = index
      @hit_die = hit_die
      @proficiencies = []
      @@all << self
    end
    
    def self.all
      @@all
    end
    
    def self.find_klass(klass)
      @@all.find {|k| k.index == klass}
    end
    
    def self.find_hit_die(klass)
      #@@all.find {|h| 
    end
end 