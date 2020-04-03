class Tour::Places 
  attr_accessor :price, :one_description
 
   @@all = []
  def initialize (one_description)
    @price = price 
    @one_description = one_description
    save 
  end 

  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
 
 def self.find_by_index(index)
    @@all[index]
  end
  
end 
  
 