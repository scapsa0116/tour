class Tour::Places 
  attr_accessor :one_description
 
   @@all = []
  def initialize (description)
   @description = description
    save 
  end 

  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
 

end 
  
 