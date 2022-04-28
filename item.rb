require "./item-module.rb"

class Item
  include Stock
  attr_reader :name, :size, :brand, :price, :instock, :sell_item
  attr_writer :instock, :sell_item

  def initialize(input_options)
    @name = input_options[:name]
    @size = input_options[:size]
    @brand = input_options[:brand]
    @price = input_options[:price]
    @instock = input_options[:instock]
    @sell_item = input_options[:sell_item]
  end

  def print_info
    puts "The #{name} is/are #{size} and the brand is #{brand}. The cost is #{price}."
  end

  def instock=(input_instock)
    @instock = input_instock
  end
end
