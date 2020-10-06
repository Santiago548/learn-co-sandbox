class Proficiencies
   attr_accessor  :index, :klass #:proficiencies
    @@all = []

    def initialize(index:)
      @index = index
      @klass = []
      #@proficiencies = []
      @@all << self
    end 

    def self.all
        @@all
    end
  
    def self.find_proficiencies(index)
      @@all.select {|k| k.index == k.index }
    end
end 