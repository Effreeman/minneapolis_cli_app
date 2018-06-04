class  MinneapolisCliApp::Restaurant
  attr_accessor :name, :review, :location, :url

  def self.all
    # scrape bringfido and then return restraunts based on that data
    self.scrape_restaurants
  end

  def self.scrape_restaurants
    restaurants = []

    restaurants << self.scrape_bringfido

    # Go to bringfido, find the restaurants
    # find the properties
    # instantiate a restaurant

    #go to bringfido ...
    restaurants
  end

  def self.scrape_bringfido
    doc = Nokogiri::HTML(open("https://www.bringfido.com/restaurant/city/minneapolis_mn_us/"))
    binding.pry
  end
end
