class Tour::Places 
  attr_accessor :name :location 
  def new_fromPage(t)
    self.new(t.css(div.sample-itineraries-module--sample-itineraries__itinerary--image-wrapper--1Ix2w))
  end 
  @@all = []
  def initialize(name = nil, location = nil)
    @name = name 
    @location = location 
    save 
  end 
  def save 
    @@all << self 
  end 
  
  def location 
    @location = inqueTerre 
  end 
  
  def name 
    @name = doc.xpath (div.lazy-load-ref)
  end 
end 