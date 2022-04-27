class Vehicle
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize(input_options)
    super()
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
    @year = input_options[:year]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

  def fuel
    return @fuel
  end

  def make
    return @make
  end

  def model
    return @model
  end
end

class Bike < Vehicle
  def initialize(input_options)
    super()
    @type = input_options[:type]
    @weight = input_options[:weight]
    @color = input_options[:color]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new({ type: "Road Bike", weight: "24oz", color: "teal" })
bike.ring_bell
bike.accelerate
p bike

car = Car.new({ fuel: 96, make: "Toyota", model: "Corolla", year: 1986 })
car.honk_horn
car.accelerate
car.fuel
p car.model
p car
