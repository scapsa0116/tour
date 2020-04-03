class Tour::Scraping
  def self.scrap_web
    
   page = Nokogiri::HTML(open("https://www.zicasso.com/luxury-tours/italy/cinque-terre"))

    results = page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV a")
    results.each_with_index do |result, index|
      puts "#{index} #{result.text}"
    end 
    results
    end
 
    
  # binding.pry
   def self.prices
      page = Nokogiri::HTML(open("https://www.zicasso.com/luxury-tours/italy/cinque-terre"))
   prices = page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV a span").text
   prices.each_line do |line|
     puts "#{line}"
  
   end 
  end
 end 
   
    
   
     
          # title = result.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-outer--1Ru_e").text.strip
    
          # # description = result.css("div.sample-itineraries-module--sample-itineraries__itinerary--caption--lower-text-wrapper--2GsCD div").text
          #     description = results.css("div.sample-itineraries-module--sample-itineraries__itinerary--caption--lower-text-wrapper--2GsCD div").text
               
          
            
           
    
  #   def scrape_pages 
  #   self.scrap_web.each do |t|
  #   Tour::Places.new.new_fromPage(t)
  #   end 
  # end 
  
  
