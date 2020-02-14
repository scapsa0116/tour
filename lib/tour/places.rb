class Tour::Places 
  attr_accessor :name :location 
  attr_reader :price 
  def new_fromPage(t)
    self.new(t.css(div.sample-itineraries-module--sample-itineraries__itinerary--image-wrapper--1Ix2w))
  end 
  @@all = []
  def initialize(name = nil, location = nil, price = nil)
    @name = name 
    @location = location 
    @price = price 
    save 
  end 
  def save 
    @@all << self 
  end 
  
  def price
    @price = "300 $"
  
  def location 
    @location = cinqueTerre 
  end 
  
  def name 
    @name = doc.xpath (div.lazy-load-ref)
  end 
end 
  
  tour = Tour.new 
  tour.name
  tour.price
  tour.location
  
  