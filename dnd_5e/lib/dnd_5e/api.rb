class API
  

  #used to creat objects from user input
   def self.fetch_klass(klass)
    url = "https://www.dnd5eapi.co/api/classes/#{klass}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    k = JSON.parse(response)
      a = Proficiencies.new(name: k["name"], hit_die: k["hit_die"], proficiencies: k["proficiencies"], saving_throws: k["saving_throws"], subclasses: k["subclasses"], klass: klass)
    end
end
  
  
  # n_klass.proficiencies << new_klass_prof
  # new_klass_prof.klass << n_klass