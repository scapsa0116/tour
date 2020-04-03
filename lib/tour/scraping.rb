class Tour::Scraping
  def self.scrap_web
    
   page = Nokogiri::HTML(open("https://www.zicasso.com/luxury-tours/italy/cinque-terre"))
#binding.pry
    description = page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV a")
    description.each_with_index do |one_description, index|
      puts "#{index+1}"
      puts "#{one_description.text}"
      
    # Tour::Places.new(one_description)
  end 
end 
    def tour_price
    page = Nokogiri::HTML(open("https://www.zicasso.com/luxury-tours/italy/cinque-terre"))
      
    price =  page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV span").text
    
    price.each do |price_value|
      puts "#{price_value}"
      price 
    end 
    end    
end 





















# puts "-----"
#       puts "|#{index+1} |"
#       puts "-----"
#       puts "#{result.text}"
#       results
#     end 
    
#   end 

#   def self.prices
#     page = Nokogiri::HTML(open("https://www.zicasso.com/luxury-tours/italy/cinque-terre"))
#     # binding.pry
#   price =  page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV span")
#     price.each_with_index do |pr, index|
#       puts "____"
#       puts "#{index+1}"
#       puts "____"
#       puts "#{pr.text}"
#       price
#   end 
# end 
# end 
    
    
    
 
    
  # binding.pry
  # def self.prices
  #     page = Nokogiri::HTML(open("https://www.zicasso.com/luxury-tours/italy/cinque-terre"))
  # prices = page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV a span").text
  # prices.each_line do |line|
  #   puts "#{line}"
     
     
   
  
  

   
    
   
     
          # title = result.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-outer--1Ru_e").text.strip
    
          # # description = result.css("div.sample-itineraries-module--sample-itineraries__itinerary--caption--lower-text-wrapper--2GsCD div").text
          #     description = results.css("div.sample-itineraries-module--sample-itineraries__itinerary--caption--lower-text-wrapper--2GsCD div").text
               
          
            
           
    
  #   def scrape_pages 
  #   self.scrap_web.each do |t|
  #   Tour::Places.new.new_fromPage(t)
  #   end 
  # end 
  
  
