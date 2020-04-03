class Tour::Scraping
  def self.scrap_web
    
   page = Nokogiri::HTML(open("https://www.zicasso.com/luxury-tours/italy/cinque-terre"))
#binding.pry
    description = page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV a")
    description.each_with_index do |one_description, index|
      puts "#{index+1}"
      puts "#{one_description.text}"
      
    Tour::Places.new(description)
    end 
   end 
 end 





















