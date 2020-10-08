class Klass
   attr_accessor  :index
   @@all = []
  
    def initialize(index:) 
      @index = index
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