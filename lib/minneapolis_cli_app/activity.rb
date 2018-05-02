class  MinneapolisCliApp::Activity
  attr_accessor :name, :category, :type, :url

  def self.all
    # scrape woot and meh and then return deals based on that data
    self.scrape_activities
  end

  def self.scrape_activities
    activites = []

    activities << self.scrape_minneapolis

    # Go to minneapolis.org, find the activities
    # find the properties
    # instantiate a deal

    #go to lonely planet ...
    activites
  end

  def self.scrape_minneapolis
    doc = Nokogiri::HTML(open("https://minneapolis.org"))
    binding.pry
  end
end
