class Dnd5e::CLI
  
  def start
    puts ""
    puts "Welcome to the 5th Edtion Dungen Manuel"
    puts""
    list_klasses
    #klass_menu
    end
    
  
  def list_klasses
    puts ""
    puts "Select the class you want to learn about"
    puts ""
    puts "1. Barbarian" # {i}. {name}
    puts"-----------"
    puts "2. Bard"
    puts"-----------"
    puts "3. Cleric"
    puts"-----------"
    puts "4. Druid"
    puts"-----------"
    puts "5. Fighter"
    puts"-----------"
    puts "6. Monk"
    puts"-----------"
    puts "7. Paladin"
    puts"-----------"
    puts "8. Ranger"
    puts"-----------"
    puts "9. Rouge"
    puts"-----------"
    puts "10. Sorcerer"
    puts"-----------"
    puts "11. Warlock"
    puts"-----------"
    puts "12. Wizard"
    puts""
    @klass = gets.strip.downcase
    puts ""
    API.fetch_klass(@klass)
    puts ""
    proficiencies = Klass.all
    print_proficiencies(proficiencies)
  end
  
  def print_proficiencies(pr)
    puts ""
    puts "Here are the proficiencies of the #{@klass} you've chossesn"
    pr.each.with_index(1) do | p, i |
      puts "#{i}. #{p.name}"
    end
  end
    
end
  
  
    #def klass_menu
    #puts ""
    #puts "choose one of the options to learn more about the class you chose or type 'classes' to see the list of classes or type 'exit'"
   # puts "1. hit die"
    #puts "----------------"
    #puts "2. proficiencies"
    #puts "----------------"
    #puts "3. spells"
    #binding.pry
  #end

   #@hit_die = gets.strip.downcase
   #puts ""
   #API.fetch_hit_die(@hit_die)
   
  # @proficiencies = gets.strip.downcase
   #puts ""
   #API.fetch_(@proficiencies)
   
   
   #puts ""
   #puts "selcet number to learn more specific information on your chossesn class"
   
   