class Dnd5e::CLI
  
  def start
    puts "===================================================="
    puts "Welcome to the 5th Edtion Class Proficiencies Manuel"
    puts "===================================================="
    API.fetch_klasses
    @klasses = Klasses.all
    print_klasses(@klasses)
    get_user_klass
    prompt
    inp = gets.strip.downcase
    while inp != 'exit' do
      if inp == 'classes'
        print_klasses(@klasses)
        get_new_user_klass
      else
        puts "===================================="
        puts "I do not information on the subject."
        puts "===================================="
      end
      prompt
      inp = gets.strip.downcase
    end
    farwell
  end
  
  def print_klasses(kl)
    puts ""
      kl.each.with_index(1) do | k, i |
      puts "#{i}. #{k.index}"
    end
  end
  
  
  def print_klass_info(kl)
    puts "============================================"
    puts "find the info you seek on you chossen class."
    puts "============================================"
    kl.each do | k |
      puts "your chosen #{k.index.capitalize} has #{k.hit_die} Hit Die"
      puts "They are Proficient at."
    end
  end
  
  
  def print_proficiencies(pr)
    puts ""
    #puts "Here are the Proficiencies for your chosen #{@name.upcase} class."
    puts "Class Proficiencies:"
      pr.each.with_index(1) do | p, i |
      puts "#{i}. #{p.name}"
    end
  end
  
  def prompt
    puts "======================================="
    puts "type 'classes' to see the class list or"
    puts "type 'exit' to exit"
    puts "======================================="
  end

end  

  def get_user_klass
    puts"====================================================="
    puts "put the 'name' of the Class you wish to learn about."
    puts "===================================================="
    @klass = gets.strip.downcase
    if @klass == 'barbarian'||'bard'||'cleric'||'druid'||'fighter'||'monk'||'paldin'||'ranger'||'rogue'||'sorcerer'||'warlock'||'wizard'
    API.fetch_klass(@klass)
    klass = Klass.all
    proficiencies = Proficiencies.find_proficiencies(@klass)
    print_klass_info(klass)
    print_proficiencies(proficiencies)
    else
     puts "==========================================================="
     puts "I do not information on the subject. please choose a class."
     puts "==========================================================="
   end
  end
    
  def get_new_user_klass
    puts"====================================================="
    puts "put the 'name' of the Class you wish to learn about."
    puts "===================================================="
    @klass = gets.strip.downcase
    API.fetch_klass(@klass)
    user_klass = Klass.find_klass(@klass)
    user_klass_prof = Proficiencies.find_proficiencies(@klass)
    print_klass_info(user_klass)
    print_proficiencies(user_klass_prof)
  end
  
  def farwell
    puts "================"
    puts "Farwell Travler."
    puts"================="
  end
