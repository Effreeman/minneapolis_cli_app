# Our CLI controller
class MinneapolisCliApp::CLI

  def call
    list_activity
    menu
    goodbye
  end

# will be filled with scrapping info later but just setting up format for now
  def list_activity
    # how HERE DOC work - https://infinum.co/the-capsized-eight/multiline-strings-ruby-2-3-0-the-squiggly-heredoc
    puts "Things to do in Minneapolis MN:"
    @activities = MinneapolisCliApp::Activity.all
    @activities.each.with_index(1) do |deal, i|
      puts "#{i}. #{activity.name} - #{activity.category} - #{activity.type}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the activity you'd like more info on or type list to see the activities again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_activity = @activities[input.to_i-1]
        puts "#{i}. #{activity.name} - #{activity.category} - #{activity.type}"
      elsif input == "list"
        list_activity
      elsif
        puts "Not sure what you want, type list or exit"
      end

    end
  end

  def goodbye
    puts " See you next time you are looking for more things to do in Minneapolis!"
  end
end
