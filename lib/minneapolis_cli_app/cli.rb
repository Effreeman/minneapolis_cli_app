# Our CLI controller
class MinneapolisCliApp::CLI

  def call
    list_things_to_do
    menu
    goodbye
  end

# will be filled with scrapping info later but just setting up format for now
  def list_things_to_do
    # how HERE DOC work - https://infinum.co/the-capsized-eight/multiline-strings-ruby-2-3-0-the-squiggly-heredoc
    puts "Things to do in Minneapolis MN:"
    puts <<~DOC
      1. lake calhoun
      2. zoo
    DOC
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the activity you'd like more info on or type list to see the activities again or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "more info on activity 1..."
      when "2"
        puts "more info on activity 2..."
      when "list"
        list_things_to_do
      else
        puts "Not sure what you want, type list or exit"
      end
    end
  end

  def goodbye
    puts " See you next time you are looking for more things to do in Minneapolis!"
  end
end
