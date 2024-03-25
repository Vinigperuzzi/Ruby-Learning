users = [
  { username: "mashrur", password: "password1"},
  { username: "jack", password: "password2"},
  { username: "arya", password: "password3"},
  { username: "jonshow", password: "password4"},
  { username: "heisenberg", password: "password5"},
  { username: "vinigperuzzi", password: "12345678"},
]

puts "Welcome to the authenticator"
25.times { print "-"}
puts

puts "This program will take inputfrom the user and compare password"
puts "If password is correct, you will get back the user object"

def authenticate(user_name, password, users)
  match_user = false
  users.each do |user|
    if user[:username] == user_name
      match_user = true
        if user[:password] == password
          return user
        else
          return "Wrong password"
      end
    end
  end
  if match_user == false
    return "There's no user with that nickname"
  end
end


def main(users)
    attemps = 0
    while attemps < 4
        user_name = gets.chomp
        password = gets.chomp
        puts authenticate(user_name, password, users)
        puts "You want to authenticate again? (y/n)"
        return if gets.chomp.downcase == "n"
        attemps += 1
    end
    puts "Exceeded number of tries"
end

main(users)