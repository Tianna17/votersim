require "./people"

class Voting
  @@voters = []
  @@politicians = []

  def Voting.create_option 
    print "(P)olitician or (V)oters: "
    options = gets.chomp.downcase
    
    if options == "p" 
      party = People.political_party
      name = People.name
      @@politicians.push({name:name, party:party,job:"Politician" })
      puts "###############################################"
      print "#{name} of the #{party} was created.\n"
      puts "###############################################\n\n"
      return

    elsif options == "v"
      name = People.name
      type = People.political_type
      @@voters.push({name:name, type:type,job:"Voter"})
      puts "###############################################"
      print "#{name}, a voter with a #{type} view was created.\n"
      puts "###############################################\n\n"
      return 
    else
      puts "Invalid option"
    end 
  end

  def Voting.list
    if @@politicians.length == 0
      puts "No politician found"
    else
      @@politicians.each do |politician|
        puts "#{politician[:job]}, #{politician[:name]}, #{politician[:party]}"
      end
    end

    if @@voters.length == 0
      puts "No voters found"
    else
      @@voters.each do |voter|
        puts "#{voter[:job]}, #{voter[:name]}, #{voter[:type]}"
      end
    end
  end


  def Voting.update
    print "Who would you like to update (enter full name)?: "
    name =  gets.chomp
     
    @@voters.map do |voter| 
      if voter[:name].downcase == name.downcase 
        new_name = People.name
        new_type = People.political_type
        voter.replace({name:new_name, type:new_type,job:"Voter"})
        puts "###############################################"
        puts "Voter #{new_name} updated successfully.\n"
        puts "###############################################\n\n"
        return 
      end
    end
    @@politicians.map do |politician|
      if politician[:name].downcase == name.downcase
        new_name = People.name
        new_party = People.political_party
        politician.replace({name:new_name, party:new_party,job:"Politician"})
        puts "###############################################" 
        puts "Politician #{new_name} updated successfully.\n"
        puts "###############################################\n\n"
         return
      end
    end
      
    puts "No match found"
      
    
  end 
  
  def Voting.delete 
    print "Who would you like to delete?: "
    name = gets.chomp

    @@voters.map do |voter|
      if voter[:name].downcase == name.downcase then
        print "Are you sure #{voter[:name]}? "
        puts "(Y)es to delete or (N)o to cancel: "
        confirm = gets.chomp.downcase
          if confirm == "y" then
            @@voters.delete(voter)
            puts "###############################################" 
            puts "\tVoter has been deleted!\n"
            puts "###############################################\n\n"
          elsif confirm == "n"
            puts "###############################################"
            puts "\tCancel\n"
            puts "###############################################\n\n"
          end

     else
      @@politicians.map do |politician|
        if politician[:name].downcase == name.downcase then 
          print "Are you sure #{politician[:name]}? "
            puts "(Y)es to delete or (N)o to cancel: "
            confirm = gets.chomp.downcase
            if confirm == "y" then
              @@politicians.delete(politician)
              puts "###############################################"
              puts "\tPolitican has been deleted\n"
              puts "###############################################\n\n"
            elsif confirm == "n"
              puts "###############################################"
              puts "\tCancel\n"
              puts "###############################################\n\n"
            end 
          end   
        end
      end
    end
  end  
 

end # Closing end for class voting
