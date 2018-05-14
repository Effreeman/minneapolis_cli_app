class  MinneapolisCliApp::Activity
  attr_accessor :name, :category, :type, :url

  def self.all
    # scrape woot and meh and then return deals based on that data
    self.scrape_activities
  end

  def self.scrape_activities
    activities = []

    activities << self.scrape_vacationidea

    # Go to vacationidea.com, find the activities
    # find the properties
    # instantiate a deal

    #go to lonely planet ...
    activities
  end

  def self.scrape_vacationidea 
    doc = Nokogiri::HTML(open("https://vacationidea.com"))
    binding.pry
  end
end
