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



    # def new_fromPage(t)
    #   self.new(
    #     t.css("h3").text,
    #     # t.css("https://www.zicasso.com/luxury-tours/italy#{t.css("a").attribute("href").text}"),
    #     t.css("p").text)
    # end
    



#   def scrap_page
#     self.page.css("div.wpcap-grid article").text
#   end

#   def scrape_pages
#     self.scrape_page.each do |t|
#       Tour::Places.new.new_fromPage(t)
#   end
# end 
# def desc
#       description.each_with_index do |index, one_description|
#       puts "#{index+1}"
#       puts "#{one_description.text}"
#        Tour::Places.new(description)
#       end
#     end 
   
 





















