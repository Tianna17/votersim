require "./crud"

class Main
  
  puts "\n##########################################################\n"
  puts " \tWelcome to 3034 Election of BT World "
  puts "##########################################################\n\n"

  def main_menu
    menu_choice = ""
    while menu_choice != "c,l,u,d,q"
      puts "C to (C)reate, L to (L)ist, U to (U)pdate D to (D)elete or Q to (Q)uit:"
      print "What would you like to do: "
      menu_choice = gets.chomp.downcase
      case menu_choice
      when "c"
        Voting.create_option
        main_menu
      when "l"
        puts "\n###############################################\n"
        puts "\tList of voters and politicans"
        puts "################################################\n\n"
       Voting.list
       puts "\n###############################################\n\n"
       main_menu
      when "u"
        Voting.update
        puts "\n"
        main_menu
      when "d"
       Voting.delete 
       puts "\n"
       main_menu
      when "q"
        puts "\n################################################\n"
        puts "\t\tThank you! Goodbye"
        puts "################################################\n\n"
        puts "\n"
        exit
      else
        puts "Invalid choice C to (C)reate, L to (L)ist, U to (U)pdate D to (D)elete or Q to (Q)uit:"
      end
    end
  end
end

  voting = Main.new
  voting.main_menu

