class  MinneapolisCliApp::Activity
  attr_accessor :name, :category, :type, :url

  def self.all
    # scrape woot and meh and then return deals based on that data
    self.scrape_activities
  end

  def self.scrape_activities
    activities = []

    activities << self.scrape_lonelyplanet

    # Go to vacationidea.com, find the activities
    # find the properties
    # instantiate a deal

    #go to lonely planet ...
    activities
  end

  def self.scrape_lonelyplanet 
    doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/usa/minneapolis/top-things-to-do/a/poi/361943"))
    binding.pry
  end
end
