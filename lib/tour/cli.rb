# require 'nokogiri'
# require 'open-url'


class Tour::ClI
  


  def call
    puts "|---------------------------------------|"
    puts "|                                       |"
    puts "|   Welcome to Cinqueterre Italy tour   |"
    puts "|                                       |"
    puts "|---------------------------------------|"
    web
    price
    # places
    # cost
    # tour1
    # tour2
    calendar
    exit_tour 
  end
  
  def web
  Tour::Scraping.scrap_web
  end

# def places
#   Tour::Places.new.new_fromPage(t)
# end

  # def price
  # puts "CHOOSE ONE OF THE 22 TOUR OPTIONS, THAT ARE OFFERED JUST FOR ONE DAY WITH LOWEST       PRICES"
     
  #    input = gets.chomp 
     
  #    if input == [1..22]
  #      input
  #    else
  #      puts "You choose the option #{input}" 
  #     end 
  #  end 

   def price 
     puts "--------------------------------------------------------------------------"
     puts "Please enter the numbers of people, maximum 7 people and minimum 2 people"
     numbers = gets.to_i 
     if numbers >= 4 || numbers >= 5 || numbers >= 6 || numbers >= 7
       puts"|-------------|"
       puts"| PRICE  500$ |"
       puts"|-------------|"
     elsif numbers >= 2 || numbers >= 3 || numbers <= 4
       puts"|-------------|"
       puts"| PRICE  300$ |"
       puts"|-------------|"
     else 
       puts "ERROR"
    end 
   end 
 
  
  
  
  def tour1
    
    puts "|tour schedule cold wether|"
    puts "|-----------------------------------------------------------|"
    puts "|1. pick up at 7 am                                         |"
    puts "|2. three places to visit                                   |"
    puts "|3. lunch 1 pm local food                                   |"
    puts "|4. four more places to visit                               |"
    puts "|1. dinner, restaurant located on the cliff of the mountain |"
    puts "|-----------------------------------------------------------|"
  end 


def tour2
    puts "|tour schedule hot weather|"
    puts "|-----------------------------------------------------------|"
    puts "|1. pick up at 7 am                                         |"
    puts "|2. three places to visit                                   |"
    puts "|3. lunch 1 pm local food                                   |"
    puts "|4. four more places to visit, bike ride includet           |"
    puts "|1. dinner, on the yacht with beautiful sunset              |"
    puts "|-----------------------------------------------------------|"
  end 
  
  
  
def calendar
  puts "please type in your month (ex:full name january)"
  month = gets.chomp
  puts "please type in your date(numbers)"
  date = gets.to_i
    if date <= 31 
       puts true 
    else 
       puts "Wrong entry, please type in again the date "
       date = gets.to_i
    end 
   
  puts "|----------------------------------------------|"
  puts "|Your tour is booked for #{date} of #{month}!  |"
  puts "|----------------------------------------------|"
  
 
  
  if month == "november" || month=="december"|| month=="january"|| month=="february" then
    puts self.tour1
    
  end
  
  if month == "march" || month == "april" || month=="may"|| month=="june"|| month=="july" || month=="august"||month=="september"||month=="october" then
    
      puts self.tour2
    
 end
 
end 

  
  
  def exit_tour 
    puts "Your booking is complit!"
    puts "If you are done please type exit!"
    input = gets.chomp 
    
    if input == "exit"
      puts "Have a beautiful day"
    else 
      puts "I didnt get that, I'll exit for you"
    end 
  end 
end 