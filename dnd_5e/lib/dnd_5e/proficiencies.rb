class Proficiencies
   attr_accessor  :index, :klass, :hit_die
    @@all = []

    def initialize(index:, klass:)
      @index = index
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