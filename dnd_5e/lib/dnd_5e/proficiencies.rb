class Proficiencies
   attr_accessor  :name, :klass
    @@all = []

    def initialize(name:, klass:)
      @name = name
      @klass = []
      @@all << self
    end 

    def self.all
        @@all
    end
  
    def self.find_proficiencies(name)
      @@all.select {|k| k.name == name } #k.klass == array 
    end
    
end 


# def self.find(klass)
      #@@all.select { |k| k.klass[0].index == klass }
    #end 