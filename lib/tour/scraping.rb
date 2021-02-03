class Tour::Scraping
  def self.scrap_web
    url = "http://www.enjoyingmoments.com/?gclid=CjwKCAiAjeSABhAPEiwAqfxURceNDNfBNzJ4nmniidRK4AubEtO_ibH0YJw0pL-EUraVloIgRDE0lhoCfjoQAvD_BwE"
   page = Nokogiri::HTML(open(url))

  results = page.css("div.wpcap-grid article")
  #binding.pry
   puts results.count

   
   results.each.with_index(1) do |result, index|
    title = result.css("h3.title").text.strip
    url = "http://www.enjoyingmoments.com/" + result.css('a')[0].attributes['href'].value
    description = result.css("p").text.strip

    puts "|-----------|"
    puts "| #{index}  TITLE |"
    puts "|-----------|"
    puts title
    puts " "
    puts "|-----------|"
    puts "| #{index}  URL   |"
    puts "|-----------|"
    puts url
    puts " "
    puts "|--------------|"
    puts "|#{index} DESCRIPTION|"
    puts "|--------------|"
    puts description
    puts " "
    puts "--------------------------------------------------------"
    puts "--------------------------------------------------------"
    puts " "
    puts " "
    puts " "
    Tour::Places.new(title, url, description)
   end
    puts "please choose a trip 1....9"
    user_input = gets.to_i 
    results.each.with_index(1) do |result, index|
      title = result.css("h3.title").text.strip
    if user_input == index 
        puts "You choose trip to"
        # puts "|-----------|"
        # puts "| #{index}  TITLE |"
        # puts "|-----------|"
        puts title
        puts " "
        
    end
  end
 end
end



   
 



















