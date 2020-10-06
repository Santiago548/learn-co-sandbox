class Klass
   attr_accessor  :index, :hit_die, :proficiencies
   @@all = []
  
    def initialize(index:, hit_die:) #name: 
      @index = index
      #@name = name
      @hit_die = hit_die
      @proficiencies = []
      @@all << self
    end
    
    def self.all
      @@all
    end
    
    def self.find_klass(index)
      @@all.select {|k| k.index == index}
    end
    
     def self.find_proficiencies(name)
      @@all.select {|k| k.name == k.name}
    end
end 