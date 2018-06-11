# Our CLI controller
class MinneapolisCliApp::CLI

  def call
    MinneapolisCliApp::Scraper.new.find_restaurant
    restaurant_info
  end


  def list_restaurants
    # how HERE DOC work - https://infinum.co/the-capsized-eight/multiline-strings-ruby-2-3-0-the-squiggly-heredoc
    puts "................................................"
    puts ".                                              ."
    puts ".  Gluten free restaurants in Minneapolis MN:  ."
    puts ".                                              ."
    puts "................................................"
    puts ""
    MinneapolisCliApp::Restaurant.all.each.with_index(1) do |restaurant, i|
      puts "#{i}. #{restaurant.name}"
    end
  end

  def print_restaurant(restaurant)
     puts "..........................................................."
     puts ". Restaurant: ".colorize(:magenta) + "#{restaurant.name}   "
     puts ". Cost: ".colorize(:magenta) + "#{restaurant.cost}         "
     puts ". Rating: ".colorize(:magenta) + "#{restaurant.rating}     "
     puts ". Location: ".colorize(:magenta) + "#{restaurant.location} "
     puts ". Features: ".colorize(:magenta) + "#{restaurant.features} "
     puts "..........................................................."
   end

  def restaurant_info
    list_restaurants
    input = nil
    while input != "exit"
      puts "Enter the number of the restaurant you'd like more info on or type list to see the restaurants again or type exit:"
      input = gets.strip
      if input == "list"
        list_restaurants
      elsif input.to_i > 0
        restaurant = MinneapolisCliApp::Restaurant.find(input.to_i)

        if restaurant
          print_restaurant(restaurant)
        else
          puts "Not a valid entry. Try list or exit."
        end
      elsif input == "exit"
        puts "See you next time you are looking for more gluten free restaurants in Minneapolis MN!"
      else puts "Not a valid entry. Try list or exit."
      end
    end
  end
end
