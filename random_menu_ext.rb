# defined arrays
adj = ["fancy", "stinky", "fishy", "burnt", "creamy", "bitter", "crispy", "greasy", "juicy", "mushy"]
cooking_style = ["broiled", "deep fried", "poached", "sauteed", "pan-seared", "blackened", "baked", "braised", "candied", "roasted"]
food = ["cheese", "steak & eggs", "pb&j", "pasta", "pizza", "tacos", "pie", "wontons", "oysters", "chicken"]

puts "How many menu items would you like to see?"
menu_items = gets.chomp.to_i

if menu_items > 10
  puts "Thats to many, choose less than 10: "
  menu_items = gets.chomp.to_i
end

puts "If you would like how pre-prepared menu, ENTER '1', if you would like to create your own menu, ENTER '2'?"

answer = gets.chomp.to_i

if answer == 1
  puts "Okay, Check out your menu!"

  n = 0

  menu_items.times do
    n = n + 1

    puts "#{n}. #{adj[rand(adj.length)]} #{cooking_style[rand(cooking_style.length)]} #{food[rand(food.length)]}"

  end
elsif answer == 2
  user_adj = []
  user_cooking_style = []
  user_food = []

  if menu_items > 10
    puts "Thats to many, choose less than 10: "
    menu_items = gets.chomp.to_i
  end

  menu_items.times do
    puts "What kind of food do you want on the menu?"
    user_food << gets.chomp

    puts "How do you like it cooked?"
    user_cooking_style << gets.chomp

    puts "How would you describe this user_food?"
    user_adj << gets.chomp
  end
  puts "Okay, Check out your menu!"

  n = 0

  menu_items.times do
    n = n + 1

    puts "#{n}. #{user_adj[rand(user_adj.length)]} #{user_cooking_style[rand(user_cooking_style.length)]} #{user_food[rand(user_food.length)]}"

  end
end
