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

n = 0

menu_items.times do
  n = n + 1

  puts "#{n}. #{adj[rand(adj.length)]} #{cooking_style[rand(cooking_style.length)]} #{food[rand(food.length)]}"
end
