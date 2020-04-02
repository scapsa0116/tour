class Tour::Scraping
  def self.scrap_web
    
   page = Nokogiri::HTML(open("https://www.zicasso.com/luxury-tours/italy/cinque-terre"))

    results = page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV a")
    results.each do |result|
    
    # binding.pry
     
          title = result.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-outer--1Ru_e").text.strip
    
          # description = result.css("div.sample-itineraries-module--sample-itineraries__itinerary--caption--lower-text-wrapper--2GsCD div").text
              description = results.css("div.sample-itineraries-module--sample-itineraries__itinerary--caption--lower-text-wrapper--2GsCD div").text
               
               description.each do |item|
               puts--------
               puts item 
               puts--------
           end 
            
           
    
     end 
  end
 end 
   
  #   def scrape_pages 
  #   self.scrap_web.each do |t|
  #   Tour::Places.new.new_fromPage(t)
  #   end 
  # end 
  
  
