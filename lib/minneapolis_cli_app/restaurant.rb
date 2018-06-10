class  MinneapolisCliApp::Restaurant
  attr_accessor :name, :cost, :rating, :location, :features

  @@all = []

  def initialize(name = nill, cost = nill, rating = nill, location = nill, features = nill)
    @name = name
    @cost = cost
    @rating = rating
    @location = location
    @features = features
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end

  def self.find_by_cost(cost)
    @@all.select {|restaurant| cost == restaurant.cost}

    
  end
end
