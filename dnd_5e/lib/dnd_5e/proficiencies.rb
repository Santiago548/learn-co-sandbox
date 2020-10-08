class Proficiencies
   attr_accessor :name, :hit_die, :proficiencies, :subclasses, :saving_throws, :klass
    @@all = []
    
    def initialize( name:, hit_die:, proficiencies:, subclasses:, saving_throws:, klass:)
      @name = name
      @hit_die = hit_die
      @proficiencies = proficiencies
      @subclasses = subclasses
      @saving_throws = saving_throws
      @klass = klass
      @@all << self
    end 

    def self.all
      @@all
    end
  
    def self.find_klass(klass)
     @@all.select {|k| k.klass == klass}
    end
    
end 

    
    
 