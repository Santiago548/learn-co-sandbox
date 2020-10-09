class API
  
   def self.fetch_klass(klass)
    url = "https://www.dnd5eapi.co/api/classes/#{klass}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    k = JSON.parse(response)
      new_klass = Klass.new(name: k["name"], hit_die: k["hit_die"], proficiencies: k["proficiencies"], saving_throws: k["saving_throws"], subclasses: k["subclasses"], skills: k["proficiency_choices"][0]["from"], klass: klass)
    end
    
end