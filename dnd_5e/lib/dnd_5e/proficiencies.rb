class Proficiencies
   attr_accessor  :name, :klass
    @@all = []

    def initialize(name:, klass:)
      @name = name
      @klass = klass
      
      @@all << self
    end 

    def self.all
        @@all
    end
  
    def self.find_proficiencies(name)
      @@all.select {|k| k.name == k.name}
    end
end 