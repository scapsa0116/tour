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
    calendar
  end
  
  
  def web 
    site = "https://www.zicasso.com/luxury-tours/italy/cinque-terre?zk=rdsa-allcountries&campaign=8703540879&ad_group=93162100771&matched_keyword=&match_type=b&network=g&device=c&ad_position=1t2&creative_id=408441423732&domain=&sitelinks=18912589273&medium=cpc&source=google&gclid=Cj0KCQiA7OnxBRCNARIsAIW53B81i_DwwHMTiTDFFxkdU2JZKi6a3vxxbUjTMI8BbInRAegpJLImIG8aAq1cEALw_wcB"
    
    page = Nokogiri::HTML(open(site))

results = page.css("div.sample-itineraries-module--sample-itineraries__itinerary--wrapper-inner--2YvOV a")
puts results.count
end 
  
  
def calendar
  puts "please type in your month (ex:full name january)"
  month = gets.chomp
  puts "please type in your date(numbers)"
  date = gets.to_i
  puts "|----------------------------------------------|"
  puts "|Your tour is booked for #{date} of #{month}!  |"
  puts "|----------------------------------------------|"
  
  if month == "november"||"decembre"||"january"||"february"||"march"
    puts tour1
       elsif month == "april"||"may"||"june"||"july"||"august"||"september"||"octombre"
       puts tour2
         else 
         puts "error"
  end 
end 
  
  def tour1
    puts "|tour schedule|"
    puts "|-----------------------------------------------------------|"
    puts "|1. pick up at 7 am                                         |"
    puts "|2. three places to visit                                   |"
    puts "|3. lunch 1 pm local food                                   |"
    puts "|4. four more places to visit                               |"
    puts "|1. dinner, restaurant located on the cliff of the mountain |"
    puts "|-----------------------------------------------------------|"
  end 


def tour2
    puts "|tour schedule|"
    puts "|-----------------------------------------------------------|"
    puts "|1. pick up at 7 am                                         |"
    puts "|2. three places to visit                                   |"
    puts "|3. lunch 1 pm local food                                   |"
    puts "|4. four more places to visit, bike ride includet           |"
    puts "|1. dinner, on the yacht with beautiful sunset              |"
    puts "|-----------------------------------------------------------|"
  end 
  

  
end 