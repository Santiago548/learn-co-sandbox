class Dnd5e::CLI
  
  def start
    puts "======================================"
    puts "Welcome to the 5th Edtion Class Manuel"
    puts "======================================"
    get_klass_list
    get_user_klass
    prompt
    inp = gets.strip.downcase
    while inp != 'exit' do
      if inp == 'classes'
        get_klass_list
        get_user_klass
      else
        puts "===================================="
        puts "I do not information on that subject."
        puts "===================================="
      end
      prompt
      inp = gets.strip.downcase
    end
    farwell
  end
  
  def get_klass_list
    @klasses = [ "Barbarian", "Bard", "Cleric", "Druid", "Fighter", "Monk", "Paladin", "Ranger", "Rouge", "Sorcerer", "Warlock", "Wizard"]
     puts ""
    @klasses.each.with_index(1) do | c, i |
      puts "#{i} - #{c}"
      puts "-------------------"
    end
  end
  
  #<Klass:0x0000000001eeff60
  
  def get_user_klass
    puts "=================================================================="
    puts "type the 'name' from the Class list above you wish to learn about."
    puts "=================================================================="
    puts ""
    @klass = gets.strip.downcase
    puts ""
    if @klass == 'barbarian'||  @klass == 'bard'||  @klass == 'cleric'||  @klass == 'druid'||  @klass == 'fighter'||  @klass == 'monk'||  @klass == 'paldin'||  @klass == 'ranger'||  @klass == 'rogue'||  @klass == 'sorcerer'||  @klass == 'warlock'|| @klass == 'wizard'
    API.fetch_klass(@klass)
    print_klass_info(Klass.find_klass(@klass))
    print_proficiencies(Klass.find_klass(@klass))
    binding.pry
    else
     puts "===================================="
     puts "I do not information on the subject."
     puts "===================================="
   end
  end
  
  
  def print_klass_info(kl)
    puts "============================================"
    puts "find the info you seek on you chossen class."
    puts "============================================"
      kl.each do |k|
      puts ""
      puts "--------------------------------"
      puts "your chosen #{k.name} has (#{k.hit_die}) Hit Die"
      puts "-Their saving throws are +#{k.saving_throws[0]["name"]}/#{k.saving_throws[1]["name"]}+"
      puts "-At higher lvls you can subclass to +#{k.subclasses[0]["name"]}+ #{k.name}"
      puts "They are Proficient at:"
    end
  end
  
  
  def print_proficiencies(pr)
    a = pr[0].proficiencies
    puts "+-+-+-+-+-+-+-+-+-+-+"
      a.each.with_index(1) do | p, i |
      puts "#{i}. #{p["name"]}"
      end
    puts "+-+-+-+-+-+-+-+-+-+-+"
  end
  
  def prompt
    puts ""
    puts "======================================="
    puts "type 'classes' to see the class list or"
    puts "type 'exit' to exit"
    puts "======================================="
    puts ""
  end
  
  def farwell
    puts "================"
    puts "Farwell Travler."
    puts "================"
  end
  
end
