require "./item.rb"

class Food < Item
  include Stock

  def initialize(input_options)
    super(input_options)
    @shelf_life = input_options[:shelf_life]
  end

  def shelf_life
    return @shelf_life
  end
end
