item1 = { item: "pants", size: "large", brand: "Bloidy", price: 60, instock: true }
item2 = { item: "guitar", size: "small", brand: "Martin", price: 10000, instock: true }
item3 = { item: "mug", size: "perfect", brand: "Hyper Pure Ceramics", price: 1423, instock: true }
puts "The #{item1[:item]} is/are #{item1[:size]} and the brand is #{item1[:brand]}. The cost is #{item1[:price]}."
puts "The #{item2[:item]} is/are #{item2[:size]} and the brand is #{item2[:brand]}. The cost is #{item2[:price]}."
puts "The #{item3[:item]} is/are #{item3[:size]} and the brand is #{item3[:brand]}. The cost is #{item3[:price]}."

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
  end
end

item1 = Item.new({ name: "pants", size: "large", brand: "Bloidy", price: 60, instock: true })
item2 = Item.new({ name: "guitar", size: "small", brand: "Martin", price: 10000, instock: true })
item3 = Item.new({ name: "mug", size: "perfect", brand: "Hyper Pure Ceramics", price: 1423, instock: true })
item1.print_info
item2.print_info
item3.print_info
item3.instock = false
p item1.size
p item3.instock
