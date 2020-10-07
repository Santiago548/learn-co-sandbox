class API
  
  #only for populating and showoing the user the classes
  def self.fetch_klasses
    url = "https://www.dnd5eapi.co/api/classes/"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    index = JSON.parse(response)["results"]
    index.each do |n|
      Klasses.new(index: n["index"])
    end
  end

  #used to creat objects from user input
   def self.fetch_klass(klass)
    url = "https://www.dnd5eapi.co/api/classes/#{klass}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    
    klass = JSON.parse(response)
    n_klass = Klass.new(index: klass["index"], hit_die: klass["hit_die"])
    
    proficiencies = JSON.parse(response)["proficiencies"]
    proficiencies.each do |p|
      new_klass_prof = Proficiencies.new(name: p["name"], klass: klass["index"])
      #new_klass_prof.klass
      n_klass.proficiencies << new_klass_prof
      new_klass_prof.klass << n_klass
       end
     end

end