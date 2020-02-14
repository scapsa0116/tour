
class Tour::Places 
  attr_accessor :name :location 
 

   @@all = []
  def new_fromPage(t)
   self.new(
    t.css("div.lazy-load-ref"),
    t.css"https://www.zicasso.com/luxury-tours/italy#{t.css("a").attribute("href").text}", 
    t.css("div.style").text) 
  
    #outputs the discription of every place (name, information, picture)
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
    @location
  end 
  
  def name 
    @name 
  end 
  
  #in case we want to creat more instances of tour 
end 
  
 