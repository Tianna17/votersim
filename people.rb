class People 
      attr_accessor :name, :party

      def People.name 
            print "Please enter a name: "
            name = gets.chomp
            return name
      end

      def People.political_party
            party = ""
            choice = ""
            while choice != "d" || choice != "r"
                  print "(D)emocrat Party or (R)epublican Party: "
                  choice = gets.chomp.downcase
            
                  if choice == "d"
                        party = "Democrat Party"
                         return party
                  elsif choice == "r"
                        party = "Republican Party"
                         return party
                  else
                        puts "Invalid option"
                  end
            end
           
      end

      def People.political_type
            type = ""
            choice = ""
            while choice == "" 
                  puts "What is your Political view?"
                  print "(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral: "
                  choice = gets.chomp.downcase

                  case choice
                  when "l"
                        type = "Liberal"
                  when "c"
                        type = "Conservative"
                  when "t"
                        type = "Tea Party"
                  when "s"
                        type = "Socialist"
                  when "n"
                        type = "Neutral"  
                  else
                        puts "Invalid option"    
                  end
                  return type
            end
      end      
     




end
