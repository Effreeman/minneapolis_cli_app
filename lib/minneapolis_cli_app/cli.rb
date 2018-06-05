
# Our CLI controller
class MinneapolisCliApp::CLI

  def call
    list_restaurants
    menu
    goodbye
  end

# will be filled with scrapping info later but just setting up format for now
  def list_restaurants
    # how HERE DOC work - https://infinum.co/the-capsized-eight/multiline-strings-ruby-2-3-0-the-squiggly-heredoc
    puts "Dog friendly restaurants in Minneapolis MN:"
    @restaurants = MinneapolisCliApp::restaurants.all
    @restaurants.each.with_index(1) do |deal, i|
      puts "#{i}. #{restaurant.name} - #{restaurant.location} - #{restaurant.url}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the restaurant you'd like more info on or type list to see the restaurants again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_restaurant = @restaurants[input.to_i-1]
        puts "#{i}. #{restaurant.name} - #{restaurant.location} - #{restaurant.url}"
      elsif input == "list"
        list_restaurant
      elsif
        puts "Not sure what you want, type list or exit"
      end

    end
  end

  def goodbye
    puts " See you next time you are looking for more dog friendly restaurants in Minneapolis MN!"
  end
end
