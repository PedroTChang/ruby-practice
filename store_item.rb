item1 = { name: "pants", size: "large", brand: "Bloidy", price: 60, instock: true }
item2 = { name: "guitar", size: "small", brand: "Martin", price: 10000, instock: true }
item3 = { name: "mug", size: "perfect", brand: "Hyper Pure Ceramics", price: 1423, instock: true }
puts "The #{item1[:name]} is/are #{item1[:size]} and the brand is #{item1[:brand]}. The cost is #{item1[:price]}."
puts "The #{item2[:name]} is/are #{item2[:size]} and the brand is #{item2[:brand]}. The cost is #{item2[:price]}."
puts "The #{item3[:name]} is/are #{item3[:size]} and the brand is #{item3[:brand]}. The cost is #{item3[:price]}."

class Item
  attr_reader :name, :size, :brand, :price, :instock
  attr_writer :instock

  def initialize(input_options)
    @name = input_options[:name]
    @size = input_options[:size]
    @brand = input_options[:brand]
    @price = input_options[:price]
    @instock = input_options[:instock]
  end

  def print_info
    puts "The #{name} is/are #{size} and the brand is #{brand}. The cost is #{price}."
  end

  # def name
  #   return @name
  # end

  # def size
  #   return @size
  # end

  # def brand
  #   return @brand
  # end

  # def price
  #   return @price
  # end

  # def instock
  #   return @instock
  # end

  def instock=(input_instock)
    @instock = input_instock
  end
end

class Food < Item
  def initialize(input_options)
    super(input_options)
    @shelf_life = input_options[:shelf_life]
  end

  def shelf_life
    return @shelf_life
  end
end

item1 = Item.new({ name: "pants", size: "large", brand: "Bloidy", price: 60, instock: true })
item2 = Item.new({ name: "guitar", size: "small", brand: "Martin", price: 10000, instock: true })
item3 = Item.new({ name: "mug", size: "perfect", brand: "Hyper Pure Ceramics", price: 1423, instock: true })
item4 = Food.new({ name: "apple", size: "small", brand: "Fuji", price: 5, instock: true, shelf_life: "2 weeks" })

item1.print_info
item2.print_info
item3.print_info
item3.instock = false
p item1.size
p item3.instock
p item4.shelf_life
