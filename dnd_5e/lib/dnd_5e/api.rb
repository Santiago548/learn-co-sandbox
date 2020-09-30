class API
  
  
  def self.fetch_klass(klass)
    url = "https://www.dnd5eapi.co/api/classes/#{klass}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    index = JSON.parse(response)
    #name = JSON.parse(response)["name"]
    #hit_die = JSON.parse(response)["hit_die"]
    proficiencies = JSON.parse(response)["proficiencies"]
      proficiencies.each do |p|
        a = Klass.new
        a.name = p["name"]
        binding.pry
    end
  end
  
end

# https://www.dnd5eapi.co/api/classes/cleric/starting-equipment/
  #list of starting-equipment
# https://www.dnd5eapi.co/api/classes/cleric/spells/
  #list of spells if no spell return not spellcaster
# https://www.dnd5eapi.co/api/classes/cleric/starting-equipment/