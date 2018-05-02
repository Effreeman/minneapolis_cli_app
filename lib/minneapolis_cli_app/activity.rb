class  MinneapolisCliApp::Activity
  attr_accessor :name, :category, :type, :url
  def self.all
    # I should return a bunch od instances of Activities

    activity_1 = self.new
    activity_1.name = "top minneapolis bike trails and scenic routes"
    activity_1.category = "nature-outdoors"
    activity_1.type = "biking"
    activity_1.url "https://www.minneapolis.org/things-to-do/nature-outdoors/biking/"

    activity_2 = self.new
    activity_2.name = "mississippi river"
    activity_2.category = "nature-outdoors"
    activity_2.type = "biking"
    activity_2.url "https://www.minneapolis.org/things-to-do/nature-outdoors/rivers/"

    [activity_1, activity_2]
  end



end
