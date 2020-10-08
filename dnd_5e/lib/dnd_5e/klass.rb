class Klass
     attr_accessor :name, :hit_die, :proficiencies, :subclasses, :saving_throws, :klass, :klasses
    @@all = []
    
    def initialize( name:, hit_die:, proficiencies:, subclasses:, saving_throws:, klass:)
      @name = name
      @hit_die = hit_die
      @proficiencies = proficiencies
      @subclasses = subclasses
      @saving_throws = saving_throws
      @klass = klass
      @klasses = []
      @@all << self
    end 

    def self.all
      @@all
    end
  
    def self.find_klass(klass)
     @@all.select {|k| binding.pry}
    end
    
end 