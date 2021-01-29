class Tour::Scraping
  def self.scrap_web
    site = "https://www.zicasso.com/luxury-tours/italy/cinque-terre"
   pages = Nokogiri::HTML(open(site))

  results = pages.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV  a")
  
   puts results.count
# binding.pry
    # results = page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV div a")
    # results = page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV a")
    # puts results.count
  
  end


#   def scrap_page
#     self.page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV a div div div ").text
#   end

#   def scrape_pages
#     self.scrape_page.each do |t|
#       Tour::Places.new.new_fromPage(t)
#   end
# end 

    # description.each_with_index do |one_description, index|
    #   puts "#{index+1}"
    #   puts "#{one_description.text}"
      
    # Tour::Places.new(description)
    # end 
   
 end 





















