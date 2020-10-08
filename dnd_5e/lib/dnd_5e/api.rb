class API
  

  #used to creat objects from user input
   def self.fetch_klass(klass)
    url = "https://www.dnd5eapi.co/api/classes/#{klass}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    k = JSON.parse(response)
      a = Proficiencies.new
      a.hit_die = k["hit_die"]
      a.proficiencies = k["proficiencies"] # iterate over
      a.saving_throws = k["saving_throws"] #["index"] # iterate over
      a.subclasses = k["subclasses"] #["index"]
    binding.pry
    proficiencies.each do |p|
      
      new_klass_prof = Proficiencies.new
      proficiency = p["index"]
     
      end
    end
  end
  
  
  # n_klass.proficiencies << new_klass_prof
  # new_klass_prof.klass << n_klass