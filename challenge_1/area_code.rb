dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717",
}

def get_city_names(dial_hash)
  dial_hash.keys
end

def get_area_code(dial_hash, key)
  return "There's no city registered with that name" if not dial_hash.has_key?(key)
  dial_hash[key]
end

def main(dial_book)
  loop do
    puts "What you want to do:\n[1] list all disponible cities\n[2] search a code by city name\n[3] exit program"
    choice = gets.chomp.to_i
    case choice
    when 1
      system "clear" or system "cls"
      puts "showing cities:\n#{'-'*12}"
      puts get_city_names(dial_book)
      puts "\n\n\n\n"
    when 2
      puts "Please, informe a city name to search"
      city = gets.chomp.downcase
      system "clear" or system "cls"
      puts get_area_code(dial_book, city)
      puts "\n\n\n"
    when 3
      exit(0)
    else
      puts "function not listed on main menu\n\n\n"
    end  
  end
end

main(dial_book)