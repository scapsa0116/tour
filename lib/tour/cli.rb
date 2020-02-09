require 'nokogiri'
require 'open-uri'


class Tour::ClI
  def call
    puts "|---------------------------------------|"
    puts "|                                       |"
    puts "|   Welcome to Cinqueterre Italy tour   |"
    puts "|                                       |"
    puts "|---------------------------------------|"
    web
  end
  
  
  def web 
    site = "https://www.zicasso.com/luxury-tours/italy/cinque-terre?zk=rdsa-allcountries&campaign=8703540879&ad_group=93162100771&matched_keyword=&match_type=b&network=g&device=c&ad_position=1t2&creative_id=408441423732&domain=&sitelinks=18912589273&medium=cpc&source=google&gclid=Cj0KCQiA7OnxBRCNARIsAIW53B81i_DwwHMTiTDFFxkdU2JZKi6a3vxxbUjTMI8BbInRAegpJLImIG8aAq1cEALw_wcB"
    
    page = Nokogiri::HTML(open(site))

results = page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV a")
puts results.count
end 
  
  
end 