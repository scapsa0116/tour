class Tour::Scraping
  def self.scrap_web
    
   page = Nokogiri::HTML(open("https://www.zicasso.com/luxury-tours/italy/cinque-terre?zk=rdsa-allcountries&campaign=8703540879&ad_group=93162100771&matched_keyword=&match_type=b&network=g&device=c&ad_position=1t2&creative_id=408441423732&domain=&sitelinks=18912589273&medium=cpc&source=google&gclid=Cj0KCQiA7OnxBRCNARIsAIW53B81i_DwwHMTiTDFFxkdU2JZKi6a3vxxbUjTMI8BbInRAegpJLImIG8aAq1cEALw_wcB"))

    results = page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV a")
    #puts results.count
    results.each do |t|
      name = t.css("??")
      location = t.css("??")
     Tour::Places.new(name, location)
   end 
  end 
  
  # def scrap_page 
  #   self.page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV a")
  # end 
  
  # def scrape_pages 
  #   self.scrap_page.each do |t|
  #     Tour::Places.new.new_fromPage(t)
  #   end 
  # end 
  
  
  
end 