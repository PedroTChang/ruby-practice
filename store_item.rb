item1 = { item: "pants", size: "large", brand: "Bloidy", price: 60, instock: true }
item2 = { item: "guitar", size: "small", brand: "Martin", price: 10000, instock: true }
item3 = { item: "mug", size: "perfect", brand: "Hyper Pure Ceramics", price: 1423, instock: true }
puts "The #{item1[:item]} is/are #{item1[:size]} and the brand is #{item1[:brand]}. The cost is #{item1[:price]}."
puts "The #{item2[:item]} is/are #{item2[:size]} and the brand is #{item2[:brand]}. The cost is #{item2[:price]}."
puts "The #{item3[:item]} is/are #{item3[:size]} and the brand is #{item3[:brand]}. The cost is #{item3[:price]}."

class Item
  def initialize(input_item, input_size, input_brand, input_price, input_instock)
    @item = input_item
    @size = input_size
    @brand = input_brand
    @price = input_price
    @instock = input_instock
  end

  def print_info
    puts "The #{item} is/are #{size} and the brand is #{brand}. The cost is #{price}. It is currently #{@instock}"
  end

  def item
    return @item
  end

  def size
    return @size
  end

  def brand
    return @brand
  end

  def price
    return @price
  end

  def instock
    return @instock
  end

  def instock=(input_instock)
    @instock = input_instock
  end
end

item1 = Item.new("pants", "large", "Bloidy", 60, true)
item2 = Item.new("guitar", "small", "Martin", 10000, true)
item3 = Item.new("mug", "perfect", "Hyper Pure Ceramics", 1423, true)
item1.print_info
item2.print_info
item3.instock = false
item3.print_info
