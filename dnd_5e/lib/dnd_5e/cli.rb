class Dnd5e::CLI
  def call
    puts ""
    puts "Welcome to the 5th Edtion Dungen Manuel"
    puts ""
    puts "Select the the number of class you want to learn about"
    # provide list of klasses
   @klass = gets.strip.downcase
    puts ""
   API.fetch_klass(@klass)
   
  end
end