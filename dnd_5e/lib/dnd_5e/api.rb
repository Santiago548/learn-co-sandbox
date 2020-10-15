class API
  
  def self.fetch_klasses
    url = "https://www.dnd5eapi.co/api/classes/"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    k = JSON.parse(response)
    #binding.pry
    k["results"].map { |k| k["index"]}
  end
  

   def self.fetch_klass(klass)
    url = "https://www.dnd5eapi.co/api/classes/#{klass}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    k = JSON.parse(response)
    if klass == 'monk'
       new_klass = Klass.new(name: k["name"], hit_die: k["hit_die"], proficiencies: k["proficiencies"], saving_throws: k["saving_throws"], subclasses: k["subclasses"], skills: k["proficiency_choices"][2]["from"], klass: klass)
    else
      new_klass = Klass.new(name: k["name"], hit_die: k["hit_die"], proficiencies: k["proficiencies"], saving_throws: k["saving_throws"], subclasses: k["subclasses"], skills: k["proficiency_choices"][0]["from"], klass: klass)
    end
  end
end