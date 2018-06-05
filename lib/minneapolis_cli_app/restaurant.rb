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

    restaurant_1 = self.new
    restaurant_1.name = doc.search("#wpbdp-listing-33374 div.listing-title").text
    restaurant_1.location = doc.search("#wpbdp-listing-33374 div.address-info").text
    restaurant_1.url =

    restaurant_2 = self.new
    restaurant_2.name =
    restaurant_2.location =
    restaurant_2.url =
    
    binding.pry
  end
end
