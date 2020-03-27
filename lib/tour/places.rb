class Tour::Places 
  attr_accessor :title, :location, :price, :description 
 
   @@all = []
  def initialize(title, location, price, description)
    @title = title
    @location = location 
    @price = price 
    @description = description
    save 
  end 
  
  def title 
    @title = @row.css("div.sample-itineraries-module--text--Fg8RY sample-itineraries-module--sample-itineraries__itinerary--caption--title--pDxwv").text
  end 
  
  def self.all 
    @@all
  end 
  
 def save 
    @@all << self 
  end 
  

  
  #in case we want to creat more instances of tour 
end 
  
 