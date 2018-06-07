class  MinneapolisCliApp::Restaurant
  attr_accessor :name, :location, :url

  def self.all
    # scrape bringfido and then return restraunts based on that data
    self.scrape_restaurants
  end

  def self.scrape_restaurants
    restaurants = []

    restaurants << self.scrape_sidewalkdog

    # Go to bringfido, find the restaurants
    # find the properties
    # instantiate a restaurant

    #go to bringfido ...
    restaurants
  end

  def self.scrape_sidewalkdog
    doc = Nokogiri::HTML(open("https://www.sidewalkdog.com/dog-friendly/wpbdp_category/food-and-drink/"))

    restaurant = self.new
    restaurant_name_list = doc.search("div.listing-title a") #collection of restaurant names
    restaurant_name_list.each do |i|
      puts i
    end 




    binding.pry
  end

end
