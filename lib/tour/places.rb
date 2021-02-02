class Tour::Places 

@@all=[]

attr_accessor :title, :url, :description



def initialize(title = nil, url = nil, description = nil)
  @title = title
  @url = url
  @description = description
  @@all << self
  save
end


def self.all
  @@all.each do |list|
    puts "Title:   #{list.name}"
    puts "Description: #{list.description}"
                
      if list.title == "" || list.description == ""
          puts "Incorect input"

      else
          puts "Title: #{list.name}" && "Description: #{list.description}"
      end
    end
end

def self.search(place_title)
  @@all.each do |list|
    if place_title == list.title
      puts "Title:   #{list.name}"
      puts "Description: #{list.description}"

      if list.title == "" || list.description == ""
        puts "Incorect input"

    else
        puts "Title: #{list.name}" && "Description: #{list.description}"
    end

    self.description(place_title)
   end
  end
end



def self.description(place_title)
@@all.each do |list|
  if place_title == list.title
    url = list.url
    page = Nokogiri::HTML(open(url))
    description = result.css("p").text.strip
    puts description
      end
  end
end






def save 
  @@all << self 
end

def self.find(id)
  self.all[id-1]
end

def description 
  @description 
end

def title
  @title
end



end