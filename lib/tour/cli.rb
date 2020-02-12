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
    exit_tour 
  end
  
  
  def web 
    @scraping = Tour::Scraping.scrap_web
   end 
  
  
def calendar
  puts "please type in your month (ex:full name january)"
  month = gets.chomp
  puts "please type in your date(numbers)"
  date = gets.to_i
  puts "|----------------------------------------------|"
  puts "|Your tour is booked for #{date} of #{month}!  |"
  puts "|----------------------------------------------|"
  
  if month == "november" "decembre" "january" "february" "march"
    puts tour1
      else 
        month == "april" "may" "june" "july" "august" "september" "octombre"
      puts tour2
       
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
  
  def exit_tour 
    puts "Your booking is complit!"
    puts "If you are done please type exit!"
    input = gets.chomp 
    
    if input == "exit"
      puts "Have a beautiful day"
    else 
      puts "I didnt get that"
    end 
  end 
    
    
  

  
end 