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
        get_user_klass
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
      puts "----------------"
    end
  end
  
  
  def print_klass_info(kl)
    puts "============================================"
    puts "find the info you seek on you chossen class."
    puts "============================================"
      kl.each do |k|
      puts ""
      puts "--------------------------------"
      puts "your chosen #{k.klass[0].index.upcase} has #{k.klass[0].hit_die} Hit Die"
      puts "They are Proficient at."
      puts "--------------------------------"
      break
      
    end
  end
  
  
  def print_proficiencies(pr)
    puts ""
    puts "Class Proficiencies:"
    puts "+--------------------+"
      pr.each.with_index(1) do | p, i |
      puts "#{i}. #{p.index}"
      puts"+--------------------+"
    end
  end
  
  def prompt
    puts ""
    puts "======================================="
    puts "type 'classes' to see the class list or"
    puts "type 'exit' to exit"
    puts "======================================="
    puts ""
  end

  def get_user_klass
    puts "===================================================="
    puts "put the 'name' of the Class you wish to learn about."
    puts "===================================================="
    puts ""
    @klass = gets.strip.downcase
    puts ""
    if @klass == 'barbarian'||  @klass == 'bard'||  @klass == 'cleric'||  @klass == 'druid'||  @klass == 'fighter'||  @klass == 'monk'||  @klass == 'paldin'||  @klass == 'ranger'||  @klass == 'rogue'||  @klass == 'sorcerer'||  @klass == 'warlock'|| @klass == 'wizard'
    API.fetch_klass(@klass)
    proficiencies = Klass.find_klass(@klass).proficiencies
  
    #klass = Proficiencies.find_proficiencies(@klass)
    print_klass_info(Proficiencies.find_proficiencies(@klass))
    print_proficiencies(proficiencies)
    else
     puts "==========================================================="
     puts "I do not information on the subject. please choose a class."
     puts "==========================================================="
   end
  end
  
  def farwell
    puts "================"
    puts "Farwell Travler."
    puts"================="
  end
end
  
  
