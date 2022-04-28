require "./item.rb"
require "./food.rb"
require "./item-module.rb"

item1 = Item.new({ name: "pants", size: "large", brand: "Bloidy", price: 60, instock: true })
item2 = Item.new({ name: "guitar", size: "small", brand: "Martin", price: 10000, instock: true })
item3 = Item.new({ name: "mug", size: "perfect", brand: "Hyper Pure Ceramics", price: 1423, instock: true })
item4 = Food.new({ name: "apple", size: "small", brand: "Fuji", price: 5, instock: true, shelf_life: "2 weeks" })

puts "Here is what is available in my store:"
puts "A pair of #{item1.name.capitalize}, a #{item2.name}, #{item3.name}, and an #{item4.name}."
item1.print_info
item2.print_info
item3.print_info
item4.print_info
item4.check_stock
